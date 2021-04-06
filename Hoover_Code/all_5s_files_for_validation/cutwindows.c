
	/*
	** This program reads a cafeteria data file or a pedometer file
	** and cuts out windows of bites or steps.
	** Bite indices are determined via gt_union.txt.
	** Step indices are determined via steps.txt.
	** The type of file is determined by which of those two GT is present.
	**
	** The data is cut from N sec prior to first GT event to N sec after
	** last GT event.  Each window is N sec (30 sec default for bites,
	** 5 sec default for steps).
	**
	** The GT class of the window is the (integer) number of events.
	** 
	** Have not yet tried:
	** -- separating bites into dominant (instrumented)
	**    hand, nondominant hand, and both hands.
	**
	** Have tried:
	** -- event is a span rather than single time instant; overlap can
	**    be a portion of 1.0 depending on span overlap with window
	*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define	MAX_DATA	54000	/* one hour at 15 Hz */
#define	MAX_EVENTS	1500
#define	MAX_WINDOWS	20000


int main(int argc, char *argv[])

{
FILE	*fpt;
char	filename[320];
int	i,j,k;
float	zero[3],total;
float	yaw,pitch,roll;
float	*Data[7],*SmoothedData[7];
int	TotalData;
int	GTEventIndex[MAX_EVENTS];	/* data index of GT bite or step */
char	GTBiteHand[MAX_EVENTS][16];	/* left, right or both */
char	GTBiteUtensil[MAX_EVENTS][16];	/* fork, hand, spoon, chopsticks */
char	GTBiteContainer[MAX_EVENTS][16];/* plate, bowl, mug, glass */
char	GTBiteFood[MAX_EVENTS][320];	/* anything */
int	GTStepFoot[MAX_EVENTS];		/* 0=>l 1=>r 2=>ledge 3=>redge */
int	BiteNumber,TotalGTEvents;
int	TotalWindows,WindowIndex[MAX_WINDOWS];
float	WindowEventCount[MAX_WINDOWS];
int	WindowStart,WindowEnd;
int	start,end,smallest,largest;
int	FileType;			/* 0=>steps, 1=>bites */
char	text[320],separators[5];
int	WindowSize,WindowStep;

if (argc != 2)
  {
  printf("Usage:  cutwindows [filename.txt]\n");
  printf("        assumes there is a gt_union.txt in same folder\n");
  printf("        or there is a steps.txt in same folder\n");
  exit(0);
  }

for (i=0; i<7; i++)
  {
  Data[i]=(float *)calloc(MAX_DATA,sizeof(float));
  SmoothedData[i]=(float *)calloc(MAX_DATA,sizeof(float));
  }

if (strcmp(&(argv[1][strlen(argv[1])-3]),"csv") == 0)
  {
  FileType=0;	/* pedometer data */
  WindowSize=15*5;	/* cutting 5 sec at 15 Hz */
  WindowStep=5;		/* sliding window 1/3 sec at 15 Hz */
  }
else
  {
  FileType=1;	/* cafeteria data */
  WindowSize=15*5;	/* cutting 20 sec at 15 Hz */
  WindowStep=15;	/* sliding window 1 sec at 15 Hz */
  }

if ((fpt=fopen(argv[1],"rb")) == NULL)
  {
  printf("Unable to open %s for reading\n",argv[1]);
  exit(0);
  }

if (FileType == 1)
  {
	/* read data file, determine total amount of data */
  TotalData=0;
  	/* file format is x y z (accel units are volts)
	** yaw pitch roll (gyro units are volts) scale (units are grams) */
  zero[0]=zero[1]=zero[2]=0.0; /* used to calculate avg of yaw pitch roll */
  while (1)
    {
    i=fscanf(fpt,"%f %f %f  %f %f %f  %f",
	&(Data[0][TotalData]),&(Data[1][TotalData]),
	&(Data[2][TotalData]),	/* x y z */
	&(Data[3][TotalData]),&(Data[4][TotalData]),
	&(Data[5][TotalData]),	/* yaw pitch roll */
	&(Data[6][TotalData]));	/* scale */
    if (i != 7)
      break;
    for (j=0; j<3; j++)
      zero[j]+=Data[j+3][TotalData];
    TotalData++;
    }

  for (j=0; j<3; j++)
    zero[j]/=(float)TotalData;

	/* convert data voltages to deg/sec (gyros)
	** and gravities (accelerometers) 
	** gyro=LPY410al, 2.5mv per deg/sec, zero-point found
	** by calculating the average data value of the whole recording
	** accel=LIS344alh, Vdd=3.3v, 5/3.3=1.515 gravities per volt */
  for (i=0; i<TotalData; i++)
    {
	/* 3.3v supply so 1/2(3.3)=1.65 reference */
	/* 15/3.3=4.5454 instead, if chip wired to +-6g */
    for (j=0; j<3; j++)
      Data[j][i]=(Data[j][i]-1.65)*(5.0/3.3);
	/* reference voltage calculated as average ADC value for while file */
    for (j=3; j<6; j++)
      Data[j][i]=(Data[j][i]-zero[j-3])*400.0;
    }
  }
else
  {
  fgets(text,320,fpt);		/* "sep=\t " (header line) (tab and space) */
  for (i=0; i<2; i++)		/* field names, units */
    {
    for (j=0; j<17; j++)
      {
      fscanf(fpt,"%[^\t\n\r]",text);
      fread(&(separators[0]),1,1,fpt);	/* extra space separator */
      }
    fread(&(separators[0]),1,2,fpt);	/* extra tab/newline */
    }
  TotalData=0;
  while (1)
    {
    i=fscanf(fpt,"%[^\t\n\r]",text);
    fread(&(separators[0]),1,1,fpt);	/* extra space separator */
    if (i != 1  ||  strlen(text) == 0)
      break;
    for (j=1; j<17; j++)
      {
      fscanf(fpt,"%[^\t\n\r]",text);
      fread(&(separators[0]),1,1,fpt);	/* extra space separator */
      if (j == 7)	/* gyroX */
        Data[3][TotalData]=(float)atof(text);
      if (j == 8)	/* gyroY */
        Data[4][TotalData]=(float)atof(text);
      if (j == 9)	/* gyroZ */
        Data[5][TotalData]=(float)atof(text);
      if (j == 10)	/* accX */
        Data[0][TotalData]=(float)atof(text);
      if (j == 11)	/* accY */
        Data[1][TotalData]=(float)atof(text);
      if (j == 12)	/* accZ */
        Data[2][TotalData]=(float)atof(text);
      }
    TotalData++;
    fread(&(separators[0]),1,1,fpt);	/* newline */
    }
  }
fclose(fpt);

	/* smooth the data (but not scale axis) */
for (i=0; i<7; i++)	/* #data */
  for (j=0; j<6; j++)	/* #axes */
    SmoothedData[j][i]=Data[j][i];
for (i=TotalData-7; i<TotalData; i++)
  for (j=0; j<6; j++)
    SmoothedData[j][i]=Data[j][i];
for (i=7; i<TotalData-7; i++)
  {
  for (j=0; j<6; j++)
    {	/* averaging over a 1-sec window (15 samples) centered on the datum */
    total=0.0;
    for (k=i-7; k<=i+7; k++)
    if (k >= 0  &&  k < TotalData)
      total+=Data[j][k];
    SmoothedData[j][i]=total/15.0;
    }
  } 

if (FileType == 1)
  {	/* load GT bites */
  strcpy(filename,argv[1]);
  j=strlen(filename)-1;
  while (j > 0  &&  filename[j] != '/'  &&  filename[j] != '\\')
    j--;
  filename[j+1]=0;
  strcat(filename,"gt_union.txt");
  if ((fpt=fopen(filename,"r")) == NULL)
    {
    printf("Unable to open %s for reading\n",filename);
    exit(0);
    }
  TotalGTEvents=0;
  while (1)
    {
    i=fscanf(fpt,"%d  %d  %s %s %s %s",
	&BiteNumber,&(GTEventIndex[TotalGTEvents]),
	GTBiteHand[TotalGTEvents],GTBiteUtensil[TotalGTEvents],
	GTBiteContainer[TotalGTEvents],GTBiteFood[TotalGTEvents]);
    if (i != 6)
      break;
    TotalGTEvents++;
    }
  fclose(fpt);
  }
else
  {	/* load GT steps */
  strcpy(filename,argv[1]);
  j=strlen(filename)-1;
  while (j > 0  &&  filename[j] != '/'  &&  filename[j] != '\\')
    j--;
  filename[j+1]=0;
  strcat(filename,"steps.txt");
  if ((fpt=fopen(filename,"r")) == NULL)
    {
    printf("Unable to open %s for reading\n",filename);
    exit(0);
    }
  TotalGTEvents=0;
  while (1)
    {
    i=fscanf(fpt,"%d  %s",
	&(GTEventIndex[TotalGTEvents]),text);
    if (i != 2)
      break;
    if (strcmp(text,"l") == 0)
      GTStepFoot[TotalGTEvents]=0;
    else if (strcmp(text,"r") == 0)
      GTStepFoot[TotalGTEvents]=1;
    else if (strcmp(text,"ledge") == 0)
      GTStepFoot[TotalGTEvents]=2;
    else if (strcmp(text,"redge") == 0)
      GTStepFoot[TotalGTEvents]=3;
    else
      {
      printf("Unknown step type: %s\n",text);
      exit(0);
      }
    TotalGTEvents++;
    }
  fclose(fpt);
  }


	/*
	** Determine start and end points.  These are the left side of
	** the windows being cut.
	** Start cutting windows WindowSize prior to first event.
	** This window will end one datum before the first bite.
	** Finish cutting at WindowStep data after last event.
	** This window will start at least one datum after the last event.
	** This way the first and last windows have 0.0 event count.
	** If the device was not recording for part of the boundary
	** window(s), then pad the data with zeroes.
	*/
smallest=largest=0;	/* find first/last, in case they are not sorted */
for (i=1; i<TotalGTEvents; i++)
  {
  if (GTEventIndex[i] < GTEventIndex[smallest])
    smallest=i;
  if (GTEventIndex[i] > GTEventIndex[largest])
    largest=i;
  }
start=GTEventIndex[smallest]-WindowSize;
end=GTEventIndex[largest]+WindowStep;

TotalWindows=0;
for (i=start; i<=end; i+=WindowStep)	/* i is left side of window */
  {
  WindowIndex[TotalWindows]=i;
  WindowEventCount[TotalWindows]=0.0;
  WindowStart=i;
  WindowEnd=i+WindowSize-1;
  for (j=0; j<TotalGTEvents; j++)
    {
    if (GTEventIndex[j] >= i  &&  GTEventIndex[j] < i+WindowSize)
      WindowEventCount[TotalWindows]+=1.0;
    }
  TotalWindows++;
  }

	/* print out cut data */
for (i=0; i<TotalWindows; i++)
  {
  if (0)	/* use this line for debugging counts by comparing to GUI */
    printf("%d...%d -> %.3lf\n",WindowIndex[i],WindowIndex[i]+WindowSize-1,
		WindowEventCount[i]);
  else
    {
    printf("%.3lf",WindowEventCount[i]);	/* class is #bites */
    for (k=WindowIndex[i]; k<WindowIndex[i]+WindowSize; k++)
      {
      for (j=0; j<6; j++)
        if (k < 0  ||  k >= TotalData)
          printf("\t0.0");
        else
          printf("\t%.3f",SmoothedData[j][k]);
      }
    printf("\n");
    }
  }

for (i=0; i<7; i++)
  {
  free(Data[i]);
  free(SmoothedData[i]);
  }

}












	/* code snippet that calculated bite count within window contribution
	** according to overlap of bite segment with window segment


#define	BITE_LENGTH	15*3	// 3 sec at 15 Hz (+1 datum at the index)

int	BiteStart,BiteEnd,WindowStart,WindowEnd,a,b;
float	Overlap;
int	start,end;

for (i=start; i<=end; i+=WINDOW_STEP)
  {
  if (i+WINDOW_SIZE > end)
    break;	// not a full window 
  WindowIndex[TotalWindows]=i;
  FloatWindowBites[TotalWindows]=0.0;
  WindowStart=i;
  WindowEnd=i+WINDOW_SIZE-1;
  for (j=0; j<TotalGTBites; j++)
    {
    BiteStart=GTBiteIndex[j]-BITE_LENGTH/2;
    BiteEnd=GTBiteIndex[j]+BITE_LENGTH/2;
	// this test for overlap assumes WINDOW_SIZE > BITE_LENGTH 
    if ((BiteStart >= WindowStart  &&  BiteStart <= WindowEnd)  ||
	(BiteEnd >= WindowStart  &&  BiteEnd <= WindowEnd))
      {
      if (BiteStart < WindowStart)
        a=WindowStart;
      else
        a=BiteStart;
      if (BiteEnd > WindowEnd)
        b=WindowEnd;
      else
        b=BiteEnd;
      Overlap=(float)(b-a+1)/((float)BITE_LENGTH);
      FloatWindowBites[TotalWindows]+=Overlap;
      }
    }
  TotalWindows++;
  }


	*/





