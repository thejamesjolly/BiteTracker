
	/*
	** This program reads two cut files that are supposed to be of the 
	** same length and compute the difference between every measurement.
	**
	**
	*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define	MAX_DATA	54000	/* one hour at 15 Hz */
#define	MAX_BITES	500
//#define	CUT		(15*30)	/* 30 sec at 15 Hz */ //passed as input argument
#define	MAX_WINDOWS	20000
#define MAX_LINE_LEN 256
#define NUM_MEAS 6


int main(int argc, char *argv[]) {

int i,j,k;
FILE *fpt1, *fpt2;
char currLine[2][MAX_LINE_LEN]; // currently read line from each file
char *flag1, *flag2; // used to check if the end of the file has been reached
float Data[2][NUM_MEAS];
int * Classes[2];
int TotalData = 0; // number of lines read with measurements
int TotalClasses = 0; // number of lines read with a class label
//int trashInt; // used for extra reads of class labels
float totalDiff = 0.0;
float totalAbsDiff = 0.0;
float maxDiff = 0.0;
float maxDataPt = 0.0;
float currDiff;

if ((fpt1=fopen(argv[1],"rb")) == NULL)
  {
  printf("Unable to open %s for reading\n",argv[1]);
  exit(0);
  }

if ((fpt2=fopen(argv[2],"rb")) == NULL)
  {
  printf("Unable to open %s for reading\n",argv[2]);
  exit(0);
  }

for (i=0; i<NUM_MEAS; i++) {
  //Data[1][i]=(float *)calloc(MAX_DATA,sizeof(float));
	//Data[2][i]=(float *)calloc(MAX_DATA,sizeof(float));
	Classes[0]=(int *)calloc(MAX_DATA,sizeof(int));
	Classes[1]=(int *)calloc(MAX_DATA,sizeof(int));
}



flag1 = fgets(currLine[0],MAX_LINE_LEN, fpt1);
flag2 = fgets(currLine[1],MAX_LINE_LEN, fpt2);


while (flag1 != NULL && flag2 != NULL) {
	// if not first line of window
	if (currLine[0][0] == '\t' && currLine[1][0] == '\t') {
		j=sscanf(currLine[0]," %f %f %f %f %f %f", 
				&(Data[0][0]),&(Data[0][1]),&(Data[0][2]),
				&(Data[0][3]),&(Data[0][4]),&(Data[0][5]));
		k=sscanf(currLine[1]," %f %f %f %f %f %f", 
				&(Data[1][0]),&(Data[1][1]),&(Data[1][2]),
				&(Data[1][3]),&(Data[1][4]),&(Data[1][5]));

		if (j == 0 || k == 0){
			printf("Fewer than expected measurements in a line.\n");
			exit(0);
		}
	}
	// if the window label is the first character of the line
	else if (isdigit(currLine[0][0]) && isdigit(currLine[1][0])) {
		// Erase the class label int at start of line
		j=sscanf(currLine[0]," %d", &(Classes[0][TotalClasses]));
		k=sscanf(currLine[1]," %d", &(Classes[1][TotalClasses]));
		if (j == 0 || k == 0){
				printf("Class Label Unable to be read in.\n");
				exit(0);
		}
		TotalClasses++;

		// Store all the measurement data
		j=sscanf(currLine[0]," %f %f %f %f %f %f", 
				&(Data[0][0]),&(Data[0][1]),&(Data[0][2]),
				&(Data[0][3]),&(Data[0][4]),&(Data[0][5]));
		k=sscanf(currLine[1]," %f %f %f %f %f %f", 
				&(Data[1][0]),&(Data[1][1]),&(Data[1][2]),
				&(Data[1][3]),&(Data[1][4]),&(Data[1][5]));

		if (j == 0 || k == 0){
			printf("Fewer than expected measurements in a line.\n");
			exit(0);
		}
	}
	//if there is a mismatch, the files are not the same cut size
	else {
		printf("Mismatch in input file indentation and formatting (possible different window sizes).\n");
		exit(0);
	}



	/* COMPUTE MATH ON DATA */
	for (i = 0; i < NUM_MEAS; i++){
		totalDiff += Data[0][i] - Data[1][i];
		currDiff = (Data[0][i] - Data[1][i]);
		if (currDiff < 0) {
			currDiff = -currDiff;
		}
		totalAbsDiff += currDiff;
		if (currDiff > maxDiff) {
			maxDiff = currDiff;
			maxDataPt = Data[0][i];
		}
	}


	//Increment data counter each line and get next lines
	TotalData++;
	flag1 = fgets(currLine[0],MAX_LINE_LEN, fpt1);
	flag2 = fgets(currLine[1],MAX_LINE_LEN, fpt2);

}




printf("\t\tSUMMARY TABLE\n\n");
printf("%-20s%0.3f\n", "Max Difference", maxDiff);
printf("%-20s%0.3f\n","Max Data Value",maxDataPt);
printf("%-20s%0.3f\n","Percent Abs Error", (totalAbsDiff/(TotalData*NUM_MEAS))*100);
printf("%-20s%0.3f\n","Percent Error", (totalDiff/(TotalData*NUM_MEAS))*100);



return 0;

}