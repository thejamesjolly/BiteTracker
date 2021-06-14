
	/*
	** Parses a list of output from evalbites to summarize the
	** total results, giving total TP, FP and U, as well as
	** the TPR and PPV.
	*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[])

{
FILE	*fpt;
int	tp,fp,u,total_tp,total_fp,total_u;
int	total_files;

if (argc != 2)
  {
  printf("Usage:  summ [file]\n");
  exit(0);
  }
if ((fpt=fopen(argv[1],"r")) == NULL)
  {
  printf("Unable to open %s for reading\n",argv[1]);
  exit(0);
  }
total_tp=total_fp=total_u=0;
total_files=0;
while (fscanf(fpt,"%d %d %d",&tp,&fp,&u) == 3)
  {
  total_tp+=tp;
  total_fp+=fp;
  total_u+=u;
  total_files++;
  }
fclose(fpt);
if (1)
  {
  printf("%d total files\n",total_files);
  printf("TP=%d FP=%d U=%d\n",total_tp,total_fp,total_u);
  printf("TPR=%.1lf\n",(double)total_tp/(double)(total_tp+total_u)*100.0);
  printf("PPV=%.1lf\n",(double)total_tp/(double)(total_tp+total_fp)*100.0);
  }
else	/* print #'s only (no description) in order of PPV TPR */
  printf("%.1lf %.1lf\n",
		(double)total_tp/(double)(total_tp+total_fp)*100.0,
		(double)total_tp/(double)(total_tp+total_u)*100.0);
}


