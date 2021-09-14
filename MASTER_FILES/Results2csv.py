'''
Written by James Jolly
-Written to translate output results from a text file in each fold
Input: A text file with a list of filepaths to the folder with the results text files
		and an output filename
Output: Creates and writes results to a .csv file
'''

import sys
import numpy as np


# Flags



# Constants





# Check Usage

if len(sys.argv) != 3:
	print("Usage:  Results2csv [file_names.txt] [output_name.csv]")
	exit(0)


# Read Results File Paths
fpt = open(sys.argv[1], 'r')
resultFiles=[line.strip() for line in fpt]
numFiles=len(resultFiles)
fpt.close()

#print(resultFiles)


# Pull Results into a single list
'''
Results files look like the following:

518 total files
TP=20748 FP=2922 U=3337
TPR=86.1
PPV=87.7
'''


# Initialize results and add Headers for each file
finalCSV=[['Folder Name','TP','FP','U','TPR','PPV','F1 Score']]


for currFile in resultFiles:
	# Read File
	print("Reading {}...".format(currFile))
	currLines=open(currFile, 'r').readlines()
	currFolderNameList= currFile.split('/')[:-1]
	currFolderName=""
	
	for ele in currFolderNameList:
		currFolderName+=ele

	# Pull numerical metrics
	metrics=currLines[1].split()
	true_pos=int(metrics[0][3:])
	false_pos=int(metrics[1][3:])
	undetected=int(metrics[2][2:])
	
	# Calculate Additional Metrics
	if (true_pos+undetected != 0):
	  truePosRate=float(true_pos)/(true_pos+undetected)*100
	else:
	  truePosRate='undefined'
	  
	if (true_pos+false_pos != 0):
	  posPredVal=float(true_pos)/(true_pos+false_pos)*100
	else:
	  posPredVal='undefined'
	  
	if (true_pos+undetected != 0) and (true_pos+false_pos != 0):
	  f1Score=2*truePosRate*posPredVal/(truePosRate+posPredVal)
	else:
	  f1Score='undefined'

	# Output results
	finalCSV.append([currFolderName, true_pos, false_pos, undetected, truePosRate, posPredVal,f1Score])



print(finalCSV)
with open(sys.argv[2],'w') as f:
    for row in finalCSV:
        for x in row:
            f.write(str(x) + ',')
        f.write('\n')
f.close()

print("Finished Writing results to {}".format(sys.argv[2]))