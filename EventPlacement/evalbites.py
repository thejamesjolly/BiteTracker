'''
Code translated from evalbites.c (written by Dr. Adam Hoover)
by James Jolly
Used to allow python access to data for ease of plotting ground
truths and predictions with matplot.lib
'''

import sys
import numpy as np

# Flags
EXTENDED_MATH_OUTPUT = 1


# Constants

MAX_RANGE_CONSIDERED=15*10 
	# if outside this range from first and last gt, bite doesn't matter
MAX_BITES=1000
NOT_MATCHED=-99999 #sentinel used during matching
NOT_COUNTED=-99998 # bite outside evaluated range



total_gt_bites = 0
gt_bite_indices=np.zeros((MAX_BITES,1))
total_comp_bites = 0
comp_bite_indices=np.zeros((MAX_BITES,1))

gt_matched=np.zeros((MAX_BITES,1))
comp_matched=np.zeros((MAX_BITES,1))

comp_sec=0
gt_sec=0
early_sec=0




# Check Usage

if len(sys.argv) != 3 and len(sys.argv) != 5:
	print("Usage:  eval [gt.txt] [computer.txt]")
	print("\tor...")
	print("\t\teval [gt.txt] [computer.txt] [start#] [end#]")
	exit(0)


#Read Ground Truth
fpt = open(sys.argv[1], 'r')
#format is gt is: [bite number#] [index#] [hand] [utensil] [location] [food]
gt_bite_indices=([int(line.split()[1]) for line in fpt]) 
total_gt_bites=len(gt_bite_indices)



#Read Pred Times
fpt = open(sys.argv[2], 'r')
#format is pred is: [index#]
comp_bite_indices=([int(line.split()[0]) for line in fpt])

#remove predictions outside the window
while (comp_bite_indices[0]<gt_bite_indices[0] - MAX_RANGE_CONSIDERED & len(comp_bite_indices)>=1):
	comp_bite_indices.pop(0)
while (comp_bite_indices[-1]>gt_bite_indices[-1] + MAX_RANGE_CONSIDERED & len(comp_bite_indices)>=1):
	comp_bite_indices.pop(-1)

total_comp_bites=len(comp_bite_indices)



#initialize all comp<->gt matches

for i in range(total_gt_bites):
	gt_matched[i] = NOT_MATCHED
for i in range(total_comp_bites):
	comp_matched[i] = NOT_MATCHED

if (len(sys.argv)==5):
	for i in range(total_gt_bites):
		if gt_bite_indices[i] < int(sys.argv[3]) or gt_bite_indices[i] > int(sys.argv[4]):
			gt_bite_indices[i] = NOT_COUNTED
	for i in range(total_comp_bites):
		if comp_bite_indices[i] < int(sys.argv[3]) or comp_bite_indices[i] > int(sys.argv[4]):
			comp_bite_indices[i] = NOT_COUNTED


# Find Matches from comp<->gt

for i in range(total_comp_bites):
	# find first GT bite that is not yet matched but occurs
	# 	after the previous computer detected bite
	for j in range(total_gt_bites):
		if gt_matched[j]==NOT_MATCHED and (i==0 or gt_bite_indices[j]>comp_bite_indices[i-1]):
			break
	if j==total_gt_bites:
		continue # no GT bite can possibly match
	#check that GT bite does not occur before the next comp detection
	if (i==total_comp_bites-1 or gt_bite_indices[j] < comp_bite_indices[i+1]):
		#match bites if the check passes
		comp_matched[i]=gt_bite_indices[j]
		gt_matched[j]=comp_bite_indices[i]


	

#Count up TP, FP, and U; also calc mean and stddev

TP=0
FP=0
U=0
mean_time_diff=0.0

for i in range(total_gt_bites):
	if gt_matched[i] != NOT_MATCHED and gt_matched[i] != NOT_COUNTED:
		TP+=1
		if EXTENDED_MATH_OUTPUT==1:
			mean_time_diff+=abs(gt_matched[i]-gt_bite_indices[i])

	elif (gt_matched[i] != NOT_COUNTED):
		U+=1

if EXTENDED_MATH_OUTPUT==1:
	stddev_time_diff=0.0
	if TP>0:
		mean_time_diff/=TP
		for i in range(total_gt_bites):
			if gt_matched[i] != NOT_MATCHED and gt_matched[i] != NOT_COUNTED:
				stddev_time_diff+=np.square(abs(gt_matched[i]-gt_bite_indices[i])-mean_time_diff)
		stddev_time_diff=int(np.sqrt(float(stddev_time_diff))/float(TP-1))

for i in range(total_comp_bites):
	if comp_matched[i]==NOT_MATCHED:
		FP+=1

if EXTENDED_MATH_OUTPUT==1:
	print("TP={} FP={} U={}".format(TP, FP, U))
	print("mean_TP_diff={}  stddev={}".format(mean_time_diff,stddev_time_diff))
else:
	print("{}  {}  {}".format(TP,FP,U))



print(gt_bite_indices)
print(comp_bite_indices)