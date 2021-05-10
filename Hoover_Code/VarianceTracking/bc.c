
/*
	** This program processes a cafeteria data file and calculates
	** bite count according to the standard algorithm.
	**
	** NOTE:  roll axis orientation in cafeteria is +CW -CCW
	**        whereas on elmm orientation is -CW +CCW
	**        (looking outward towards hand)
	**        this affects event order steps 0 and 2
	**
	** Added -start # and -end # option to work on sub-windows of data.
	** Added -params file to process with optimized parameters.
	*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <tensorflow/c/c_api.h>

#define MAX_DATA 100000

/* parameters for rule-based classifier */
#define TIME1_THRESH 30  /* units are 15Hz intervals (2 sec) */
#define TIME2_THRESH 120 /* units are 15Hz intervals (8 sec) */
#define ROLL_THRESH 10.0 /* units are deg/sec */

/* parameters for neural network classifier */
#define WINDOW_SIZE 75 /* 30 sec @ 15 Hz */
#define WINDOW_STEP 15 /* 1 sec @ 15 Hz */

#define DEBUG 0 /* shows info to help reimplementations */

/* function prototypes for TensorFlow classifier */
void TensorFlowInit();
float TensorFlowClassify();
void TensorFlowCleanup();

int main(int argc, char *argv[])

{
  FILE *fpt;
  float acc_x, acc_y, acc_z, yaw, pitch, roll, scale;
  float *data[6], *smoothed[6], *windowdata;
  float min[6], max[6];
  float bites_in_window;
  int i, j, k;
  int total_data;
  float zero[3], total;
  int event, dt;
  int bitecount;
  float roll_thresh;
  int time1_thresh, time2_thresh;
  char parsing[320], gt_filename[320];
  int start, end; /* boundaries of good data */
  int fold;       /* fold of cross-validation for NN model */
  char model_folder[320];
  int gt_time, gt_index;
  char gt_hand[80], gt_utensil[80], gt_container[80], gt_food[80];
  int time1_opt[60], time2_opt[60], total_opt_mins;
  int which_classifier; /* 0=>rule-basd, 1=>neural network */
  int TotalBites;
  float FloatBites;

  if (argc < 2)
  {
    printf("Usage:  bc filename.txt [-r #] [-t1 #] [-t2 #]\n");
    printf("                        [-start #] [-end #] [-params file]\n");
    printf("                        [-fold #]\n");
    exit(0);
  }
  /* parse command line arguments, if any exist */
  roll_thresh = ROLL_THRESH; /* default values */
  time1_thresh = TIME1_THRESH;
  time2_thresh = TIME2_THRESH;
  start = 0;
  end = 999999;
  which_classifier = 1; /* default is NN-based */
  fold = 0;             /* default is no fold */
  strcpy(model_folder,"."); /* Default is to haveuse current directory
  total_opt_mins = 0;   /* default is not used */
  if (argc > 2)
  {
    i = 2;
    while (i < argc)
    {
      if (strcmp(argv[i], "-r") == 0)
        roll_thresh = atof(argv[i + 1]);
      else if (strcmp(argv[i], "-t1") == 0)
        time1_thresh = atoi(argv[i + 1]);
      else if (strcmp(argv[i], "-t2") == 0)
        time2_thresh = atoi(argv[i + 1]);
      else if (strcmp(argv[i], "-fold") == 0)
        fold = atoi(argv[i + 1]);
      else if (strcmp(argv[i], "-start") == 0)
        start = atoi(argv[i + 1]);
      else if (strcmp(argv[i], "-end") == 0)
        end = atoi(argv[i + 1]);
      else if (strcmp(argv[i], "-modelDir") == 0)
        strcpy(model_folder,argv[i + 1]);
      else if (strcmp(argv[i], "-params") == 0)
      {
        if ((fpt = fopen(argv[i + 1], "r")) == NULL)
        {
          printf("Unable to open %s for reading\n", argv[i + 1]);
          exit(0);
        }
        while (1)
        {
          k = fscanf(fpt, "%d %d %d", &j, &(time1_opt[total_opt_mins]),
                     &(time2_opt[total_opt_mins]));
          if (k == 3)
            total_opt_mins++;
          else
            break;
        }
        fclose(fpt);
      }
      else
      {
        printf("Unknown argument: %s\n", argv[i]);
        exit(0);
      }
      i += 2;
    }
  }

  if ((fpt = fopen(argv[1], "r")) == NULL)
  {
    printf("Unable to open %s for reading\n", argv[1]);
    exit(0);
  }

  /* allocate space for data */
  for (i = 0; i < 6; i++)
  {
    data[i] = (float *)calloc(MAX_DATA, sizeof(float));
    smoothed[i] = (float *)calloc(MAX_DATA, sizeof(float));
  }
  windowdata = (float *)calloc(WINDOW_SIZE * 6, sizeof(float));

  /* read in all the raw data */
  /* file format is acc_x acc_y acc_z yaw pitch roll scale */
  /* data is assumed to be line by line at 15 Hz */
  total_data = 0;
  zero[0] = zero[1] = zero[2] = 0.0;
  while (1)
  {
    i = fscanf(fpt, "%f %f %f %f %f %f %f",
               &acc_x, &acc_y, &acc_z, &yaw, &pitch, &roll, &scale);
    if (i != 7)
      break;
    data[0][total_data] = acc_x;
    data[1][total_data] = acc_y;
    data[2][total_data] = acc_z;
    data[3][total_data] = yaw;
    data[4][total_data] = pitch;
    data[5][total_data] = roll;
    zero[0] += yaw; /* calibrate the zero points for gyro */
    zero[1] += pitch;
    zero[2] += roll;
    total_data++;
    if (total_data >= MAX_DATA)
    {
      printf("MAX DATA (%d) exceeded\n", MAX_DATA);
      fclose(fpt);
      exit(0);
    }
  }
  fclose(fpt);
  if (DEBUG)
    printf("%d total data read\n", total_data);
  zero[0] /= (float)total_data;
  zero[1] /= (float)total_data;
  zero[2] /= (float)total_data;
  if (DEBUG)
    printf("average roll voltage %f\n", zero[2]);

  /* convert data voltages to deg/sec (gyros)
	** and gravities (accelerometers)
	** gyro=LPY410al, 2.5mv per deg/sec, zero-point found
	** by calculating the average data value of the whole recording
	** accel=LIS344alh, Vdd=3.3v, 5/3.3=1.515 gravities per volt */
  for (i = 0; i < total_data; i++)
  {
    /* 3.3v supply so 1/2(3.3)=1.65 reference */
    /* 15/3.3=4.5454 instead, if chip wired to +-6g */
    for (j = 0; j < 3; j++)
      data[j][i] = (data[j][i] - 1.65) * (5.0 / 3.3);
    /* reference voltage calculated as average ADC value for while file */
    for (j = 3; j < 6; j++)
      data[j][i] = (data[j][i] - zero[j - 3]) * 400.0;
  }

  /* smooth the data -- need to consolidate all programs to
	** emulate real-time (not looking ahead in smooth buffer) */
  for (i = 0; i < 14; i++)  /* #data */
    for (j = 0; j < 6; j++) /* #axes */
      smoothed[j][i] = data[j][i];
  //for (i=14; i<total_data; i++)
  for (i = 7; i < total_data - 7; i++)
  {
    for (j = 0; j < 6; j++)
    { /* averaging over a 1-sec window (previous 14 samples + current) */
      total = 0.0;
      //    for (k=i-14; k<=i; k++)
      for (k = i - 7; k <= i + 7; k++)
        total += data[j][k];
      smoothed[j][i] = total / 15.0;
    }
  }

  if (start == 0 && end == 999999)
  {                       /* if no subrange specified, try to use GT file to set range */
                          /* check if GT file exists; if it does, read first and
	** last entry to set boundaries for which data to process */
    start = 14;           /* default is all data (14 is after cal time) */
    end = total_data - 1; /* default is all data */
    strcpy(parsing, argv[1]);
    i = strlen(parsing) - 1;
    while (parsing[i] != '/' && i > 0)
      i--;
    parsing[i] = 0;
    if (i > 0)
      sprintf(gt_filename, "%s/gt_union.txt", parsing);
    else
      sprintf(gt_filename, "./gt_union.txt");
    if ((fpt = fopen(gt_filename, "r")) != NULL)
    {
      i = fscanf(fpt, "%d %d %s %s %s %s", &gt_index, &gt_time,
                 gt_hand, gt_utensil, gt_container, gt_food);
      if (i == 6)
      {
        start = gt_time;
        while ((i = fscanf(fpt, "%d %d %s %s %s %s", &gt_index, &gt_time,
                           gt_hand, gt_utensil, gt_container, gt_food)) == 6)
          ;
        end = gt_time;
      }
      fclose(fpt);
      if (which_classifier == 0)
      {
        start = start - 150; /* 10 second prior to first actual bite */
        end = end + 150;     /* 10 seconds after last actual bite */
        if (start < 0)       /* error checking for min and max data range */
          start = 0;
        if (end > total_data - 1)
          end = total_data - 1;
      }
      else
      {
        start = start - WINDOW_SIZE; /* must have 0 bite count in 1st window */
        end = end + WINDOW_STEP;     /* must have 0 bite count in last window */
      }
    }
  }

  if (which_classifier == 0)
  {
    /***********************************/
    /* BITE COUNTER BASELINE ALGORITHM */
    /***********************************/

    bitecount = 0; /* total bites detected */
    event = 0;     /* the current event in a bite cycle:
		/*	0=waiting for roll>T; 1=waiting for 2sec;
		/*	2=waiting for roll<-T; 3=waiting for 6sec */
    i = start;
    while (i <= end)
    {
      /* update T2,T4 from optimized input after each minute, if available */
      if (total_opt_mins > 0 && (i - start) % 900 == 0 &&
          (i - start) / 900 < total_opt_mins) /* no update for last partial minute */
      {
        time1_thresh = time1_opt[((i - start) / 900)];
        time2_thresh = time2_opt[((i - start) / 900)];
      }
      if (event == 0 && smoothed[5][i] > roll_thresh)
      {
        event = 1;
        dt = 0;
      }
      if (event == 1)
      {
        dt++;
        if (dt > time1_thresh) /* count up to 2 seconds */
          event = 2;
      }
      if (event == 2 && smoothed[5][i] < 0.0 - roll_thresh)
      {
        event = 3;
        dt = 0;
        bitecount++;
        printf("%d\n", i); /* index of bite detected */
      }
      if (event == 3)
      {
        dt++;
        if (dt > time2_thresh) /* count up to 8 seconds */
        {
          event = 0;
        }
      }
      if (DEBUG)
        printf("index %d  value %f  event %d\n", i, smoothed[5][i], event);
      i++;
    }
  }
  else
  { /* neural network classifier */
    TensorFlowInit(model_folder, fold);
    i = start;
    FloatBites = 0.0;
    TotalBites = 0;

    while (i <= end)
    {
      /* find min/max per sensor row per window to normalize */
      for (k = 0; k < 6; k++)
      {
        if (i < 0)
          min[k] = max[k] = smoothed[k][0];
        else
          min[k] = max[k] = smoothed[k][i];
        for (j = 0; j < WINDOW_SIZE; j++)
        {
          if (i + j < 0 || i + j >= total_data)
            continue;
          if (smoothed[k][i + j] < min[k])
            min[k] = smoothed[k][i + j];
          if (smoothed[k][i + j] > max[k])
            max[k] = smoothed[k][i + j];
        }
      }
      /* window data[] is a 1D array and is organized as follows:
	** t0[x y z Y P R]  t1[x y z Y P R]  t2[x y z Y P R] ... */
      for (j = 0; j < WINDOW_SIZE; j++)
      {
        if (i + j < 0 || i + j >= total_data)
        {
          for (k = 0; k < 6; k++)
            windowdata[j * 6 + k] = 0.0;
        }
        else
        {
          for (k = 0; k < 6; k++)
            windowdata[j * 6 + k] = (smoothed[k][i + j] - min[k]) / (max[k] - min[k]);
        }
      }

      if (0)
      {
        for (j = 0; j < WINDOW_SIZE * 6; j++)
          printf("\t%.3f", windowdata[j]);
        printf("\n");
        break;
      }

      bites_in_window = TensorFlowClassify(windowdata);
      if (0)
        printf("%f\n", bites_in_window);
      if (1)
      { /* cap negative values at zero */
        if (bites_in_window < 0.0)
          bites_in_window = 0.0;
      }
      if (0)
      { /* cap values above six */
        if (bites_in_window > 6.0)
          bites_in_window = 6.0;
      }

      /* calculate bite detections based on sliding window count */
      FloatBites = FloatBites + (bites_in_window / (float)(WINDOW_SIZE) * (float)(WINDOW_STEP));
      if (0)
        printf("%.1f %.1lf\n", bites_in_window, FloatBites);
      if (TotalBites < (int)(FloatBites + 0.5))
      {
        TotalBites++;
        printf("%d\n", i + 300);
      }

      i += WINDOW_STEP;
    }

    TensorFlowCleanup();
  }

  /* release memory */
  for (i = 0; i < 6; i++)
    free(data[i]);
  free(windowdata);
}

/* for TF_NewBuffer, used in reading the file */
void free_buffer(void *data, size_t length) { free(data); }

#define INPUT_LENGTH 75 /* amount of data per input pattern */
                        /* 15 Hz x 30 sec = 450 */
#define INPUT_AXES 6    /* number of axes per input pattern */
#define OUTPUT_LENGTH 1 /* number of classes in output */
                        /* #bites (float value) in the window */

/*
	** The input and output layer names can be found by placing the
	** following 2 lines in the python program used for training:
	** print('model inputs: ',model.inputs)
	** print('model outputs: ',model.outputs)
	** Put the printed strings into the below two variables.
	*/
char *input_layer_name = "conv1d_input";
char *output_layer_name = "dense/BiasAdd";

/* TF library stuff */
TF_Graph *graph;
TF_Status *status;
TF_ImportGraphDefOptions *graph_opts;
TF_SessionOptions *session_opts;
TF_Buffer *graph_def;
TF_Session *session;
TF_Operation *input_layer, *output_layer;
TF_Tensor *input_tensor, *output_tensor;
TF_Output network_inputs, network_outputs;

/* load the TF model, initialize the TF classifier */

void TensorFlowInit(char* model_folder, int fold)

{
  FILE *fpt;
  long fsize;
  void *data;
  int64_t input_dim[3] = {1, INPUT_LENGTH, INPUT_AXES};
  int64_t output_dim[2] = {1, OUTPUT_LENGTH};
  char model_filename[320];

  /*
	** filename for the PB mdoel (note this program
	** assumes a stripped down PB file, no tags in it)
	*/
  if (fold == 0)
    sprintf(model_filename, "model-freeze-4GB.pb");
  else
    sprintf(model_filename, "%s/model-5b-fold%d.pb", model_folder, fold);

  graph = TF_NewGraph();   /* holds model */
  status = TF_NewStatus(); /* can be checked for errors after every TF call */
                           /* read graph from file */
  if ((fpt = fopen(model_filename, "rb")) == NULL)
  {
    printf("Unable to open %s for reading\n", model_filename);
    exit(0);
  }
  fseek(fpt, 0, SEEK_END);
  fsize = ftell(fpt);
  fseek(fpt, 0, SEEK_SET);
  data = malloc(fsize);
  fread(data, fsize, 1, fpt);
  fclose(fpt);
  graph_def = TF_NewBuffer();
  graph_def->data = data;
  graph_def->length = fsize;
  graph_def->data_deallocator = free_buffer; /* used in TF_DeleteGraph() */
  graph_opts = TF_NewImportGraphDefOptions();
  TF_GraphImportGraphDef(graph, graph_def, graph_opts, status);
  TF_DeleteImportGraphDefOptions(graph_opts);
  if (TF_GetCode(status) != TF_OK)
  {
    printf("Unable to import graph from %s\n", model_filename);
    exit(0);
  }

  /* make a session (instantiate the model) */
  session_opts = TF_NewSessionOptions();
  session = TF_NewSession(graph, session_opts, status);
  TF_DeleteSessionOptions(session_opts);
  if (TF_GetCode(status) != TF_OK)
  {
    printf("Unable to create session\n");
    exit(0);
  }

  /* find input layer */
  input_layer = TF_GraphOperationByName(graph, input_layer_name);
  if (input_layer == NULL)
  {
    printf("input layer name %s not found\n", input_layer_name);
    exit(0);
  }
  network_inputs.oper = input_layer;
  network_inputs.index = 0;

  /* find output layer */
  output_layer = TF_GraphOperationByName(graph, output_layer_name);
  if (output_layer == NULL)
  {
    printf("output layer name %s not found\n", output_layer_name);
    exit(0);
  }
  network_outputs.oper = output_layer;
  network_outputs.index = 0;

  /* create tensors, get pointers to data buffers inside them */
  input_tensor = TF_AllocateTensor(TF_FLOAT, input_dim, 3,
                                   INPUT_LENGTH * INPUT_AXES * sizeof(float));
  output_tensor = TF_AllocateTensor(TF_FLOAT, output_dim, 2,
                                    OUTPUT_LENGTH * sizeof(float));
}

/* classify one window of data, return #bites in the window */

float TensorFlowClassify(float *sampledata)

{
  int i, a;
  float *input_buf_ptr, *output_buf_ptr; /* access to data in tensors */
  float ret;

  /* copy data into input tensor */
  input_buf_ptr = TF_TensorData(input_tensor);
  for (i = 0; i < INPUT_LENGTH * INPUT_AXES; i++)
  {
    input_buf_ptr[i] = sampledata[i];
  }

  /* perform classification (run the neural network) */
  TF_SessionRun(session,
                NULL,                                /* run options */
                &network_inputs, &input_tensor, 1,   /* input tensor(s) */
                &network_outputs, &output_tensor, 1, /* output tensor(s) */
                NULL, 0,                             /* target op(s) */
                NULL,                                /* run metadata */
                status);                             /* output status */
  if (TF_GetCode(status) != TF_OK)
  {
    printf("Unable to perform classification: %s\n", TF_Message(status));
    exit(0);
  }

  /* get result from output tensor */
  output_buf_ptr = TF_TensorData(output_tensor); /* get the new ptr */
  ret = output_buf_ptr[0];
  /*
	** TF_SessionRun() allocates a new tensor for the output.
	** It must be deleted to prevent a memory leak.  See c_api.h
	*/
  TF_DeleteTensor((TF_Tensor *)output_tensor);
  return (ret);
}

/* free the TF variables created for the classifier */

void TensorFlowCleanup()

{
  TF_CloseSession(session, status);
  TF_DeleteSession(session, status);
  TF_DeleteStatus(status);
  TF_DeleteBuffer(graph_def);
  TF_DeleteGraph(graph);
}
