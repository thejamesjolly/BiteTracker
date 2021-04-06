#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define	FOLDS		5	/* number of folds to cut data into */
#define	MAX_FILES	520	/* max number of data files */
#define	FOLD_PREFIX	"data5"  /* prefix of fold filenames to create */

int main(int argc, char *argv[])

{
FILE	*fpt;
char	text[320],folder[320];
char	*filenames[MAX_FILES];
int	i,j,total_files;

if (argc != 2)
  {
  printf("Usage:  cutfolds [folder]\n");
  exit(0);
  }

for (i=0; i<MAX_FILES; i++)
  filenames[i]=(char *)calloc(320,1);

sprintf(text,"ls %s > zqfiles.txt",argv[1]);
system(text);
fpt=fopen("zqfiles.txt","r");
total_files=0;
while (1)
  {
  i=fscanf(fpt,"%s",filenames[total_files]);
  if (i != 1)
    break;
  total_files++;
  if (total_files >= MAX_FILES)
    {
    printf("MAX_FILES (%d) exceeded\n",MAX_FILES);
    exit(0);
    }
  }
fclose(fpt);
sprintf(text,"rm zqfiles.txt");
system(text);

strcpy(folder,argv[1]);
if (folder[strlen(folder)-1] != '/')
  strcat(folder,"/");

for (i=0; i<FOLDS; i++)
  {
  for (j=0; j<total_files; j++)
    {
    if (j >= i*total_files/FOLDS  &&  j < (i+1)*total_files/FOLDS)
      continue;	/* this is a test file for this fold */
    if (j == 0  ||  (i == 0  &&  j == (i+1)*total_files/FOLDS))
      sprintf(text,"cat %s%s > %s%d.txt",folder,filenames[j],FOLD_PREFIX,i+1);
    else
      sprintf(text,"cat %s%s >> %s%d.txt",folder,filenames[j],FOLD_PREFIX,i+1);
    system(text);
    }
  }

for (i=0; i<MAX_FILES; i++)
  free(filenames[i]);
}

