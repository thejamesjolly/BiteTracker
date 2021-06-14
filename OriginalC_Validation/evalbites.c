
	/*
	** This program compares an automatically detected set of bites
	** against a ground truth set and determines the number of
	** true detections, false positives, and missed bites.
	*/

#define	MAX_BITES	1000
#define	NOT_MATCHED	-99999	/* sentinel used during matching */
#define	NOT_COUNTED	-99998	/* bite outside evaluated range */

#define	EXTENDED_OUTPUT	0	/* display more stats */

#define SQR(x)	((x)*(x))

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char *argv[])

{
FILE	*fpt;
char	text[320],*dontcare;
int	i,j;
int	total_gt_bites;
int	gt_bite_indices[MAX_BITES];
int	total_comp_bites;
int	comp_bite_indices[MAX_BITES];
int	index,timestamp;
int	gt_matched[MAX_BITES],comp_matched[MAX_BITES];
int	TP,FP,U;
int	comp_sec,gt_sec,early_sec;
int	mean_time_diff,stddev_time_diff;


if (argc != 3  &&  argc != 5)
  {
  printf("Usage:  eval [gt.txt] [computer.txt]\n");
  printf("  or...\n");
  printf("        eval [gt.txt] [computer.txt] [start#] [end#]\n");
  exit(0);
  }

	/* read ground truth file */
if ((fpt=fopen(argv[1],"r")) == NULL)
  {
  printf("Unable to open %s for reading\n",argv[1]);
  exit(0);
  }
total_gt_bites=0;
while (1)
  {
  i=fscanf(fpt,"%d %d",&index,&timestamp);
  if (i != 2)
    break;
  dontcare=fgets(text,320,fpt);	/* read rest of line, don't need for now */
  gt_bite_indices[total_gt_bites]=timestamp;
  total_gt_bites++;
  }
fclose(fpt);
if (EXTENDED_OUTPUT)
  printf("%d bites in GT\n",total_gt_bites);

	/* read computer file */
if ((fpt=fopen(argv[2],"r")) == NULL)
  {
  printf("Unable to open %s for reading\n",argv[2]);
  exit(0);
  }
total_comp_bites=0;
while (1)
  {
  i=fscanf(fpt,"%d",&timestamp);
  if (i != 1)
    break;
  dontcare=fgets(text,320,fpt);	/* read rest of line, don't need for now */
	/* is it earlier than 10sec prior to first GT bite? */
  if (timestamp < gt_bite_indices[0]-150)
    continue;	/* don't evaluate this md */
	/* is it later than 10sec after last GT bite? */
  if (timestamp > gt_bite_indices[total_gt_bites-1]+150)
    continue;	/* don't evaluate this md */
  comp_bite_indices[total_comp_bites]=timestamp;
  total_comp_bites++;
  }
fclose(fpt);
if (EXTENDED_OUTPUT)
  printf("%d bites in computer file\n",total_comp_bites);

if (EXTENDED_OUTPUT)
  {
  comp_sec=(comp_bite_indices[total_comp_bites-1]-comp_bite_indices[0]+300)/15;
  gt_sec=(gt_bite_indices[total_gt_bites-1]-gt_bite_indices[0]+300)/15;
  early_sec=(comp_bite_indices[3]-comp_bite_indices[0])/15;
  printf("md %d sec %.1lf spb    gt %d sec %.1lf spb   early %.1lf spb\n",
	comp_sec,(double)comp_sec/(double)total_comp_bites,
	gt_sec,(double)gt_sec/(double)total_gt_bites,
	(double)early_sec/(double)4.0);
  }

	/* initialize all comp<->gt bite matches */
for (i=0; i<total_gt_bites; i++)
  gt_matched[i]=NOT_MATCHED;
for (i=0; i<total_comp_bites; i++)
  comp_matched[i]=NOT_MATCHED;
if (argc == 5)
  {
  for (i=0; i<total_gt_bites; i++)
    if (gt_bite_indices[i] < atoi(argv[3])  ||
	gt_bite_indices[i] > atoi(argv[4]))
      gt_matched[i]=NOT_COUNTED;
  for (i=0; i<total_comp_bites; i++)
    if (comp_bite_indices[i] < atoi(argv[3])  ||
	comp_bite_indices[i] > atoi(argv[4]))
      comp_matched[i]=NOT_COUNTED;
  }

	/* find matches from comp<->gt */
for (i=0; i<total_comp_bites; i++)
  {
		/* find first GT bite that is not yet matched but occurs
		** after the previous computer detected bite */
  for (j=0; j<total_gt_bites; j++)
    if (gt_matched[j] == NOT_MATCHED  &&
	(i == 0  ||  gt_bite_indices[j] > comp_bite_indices[i-1]) )
	//  && abs(gt_bite_indices[j]-comp_bite_indices[i]) <= 15)
      break;
  if (j == total_gt_bites)
    continue;	/* no GT bite can possibly match */
		/* check if this GT bite occurs before next comp detection */
  if (i == total_comp_bites-1  ||  gt_bite_indices[j] < comp_bite_indices[i+1])
    {		/* ok, match them */
    comp_matched[i]=gt_bite_indices[j];
    gt_matched[j]=comp_bite_indices[i];
    }
  }

if (EXTENDED_OUTPUT)
  for (i=0; i<total_comp_bites; i++)
    printf("MD(%d) => GT(%d)\n",comp_bite_indices[i],comp_matched[i]);

	/* count up TP, FP and U */
	/* also calculate mean and stddev (absolute value)
	** time diff of TP detections */
TP=FP=U=0;
mean_time_diff=0;
for (i=0; i<total_gt_bites; i++)
  if (gt_matched[i] != NOT_MATCHED  &&  gt_matched[i] != NOT_COUNTED)
    {
    TP++;
    if (EXTENDED_OUTPUT)
      {
      printf("%d %d  %d\n",gt_bite_indices[i],gt_matched[i],
		gt_matched[i]-gt_bite_indices[i]);
      mean_time_diff+=abs(gt_matched[i]-gt_bite_indices[i]);
      }
    }
  else if (gt_matched[i] != NOT_COUNTED)
    U++;
if (TP > 0)
  {
  mean_time_diff/=TP;
  for (i=0; i<total_gt_bites; i++)
    if (gt_matched[i] != NOT_MATCHED  &&  gt_matched[i] != NOT_COUNTED)
      stddev_time_diff+=SQR(abs(gt_matched[i]-gt_bite_indices[i])
		-mean_time_diff);
  stddev_time_diff=(int)(sqrt((double)stddev_time_diff)/(double)(TP-1));
  }
else
  stddev_time_diff=0.0;
for (i=0; i<total_comp_bites; i++)
  if (comp_matched[i] == NOT_MATCHED)
    FP++;
if (EXTENDED_OUTPUT)
  {
  printf("TP=%d  FP=%d  U=%d\n",TP,FP,U);
  printf("mean_TP_diff=%d  stddev=%d\n",mean_time_diff,stddev_time_diff);
  }
else
  printf("%d  %d  %d\n",TP,FP,U);
}
 
