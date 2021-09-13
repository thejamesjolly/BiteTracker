'''
Written by James Jolly
-Written to translate output results from a text file in each fold
'''

import sys
import numpy as np


# Flags



# Constants





# Check Usage

if len(sys.argv) != 2:
	print("Usage:  Results2csv [file_names.txt]")
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
	currLines=open(currFile, 'r').readlines()

	# Pull numerical metrics
	metrics=currLines[1].split()
	true_pos=int(metrics[0][3:])
	false_pos=int(metrics[1][3:])
	undetected=int(metrics[2][2:])
	
	# Calculate Additional Metrics
	truePosRate=float(true_pos)/(true_pos+undetected)*100
	posPredVal=float(true_pos)/(true_pos+false_pos)*100
	f1Score=2*truePosRate*posPredVal/(truePosRate+posPredVal)

	# Output results
	finalCSV.append([currFile, true_pos, false_pos, undetected, truePosRate, posPredVal,f1Score])



print(finalCSV)

