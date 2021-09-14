'''
Code moified from evalbites.py to create visualizations
by James Jolly
-Used to allow python access to data for ease of plotting ground
truths and predictions with matplot.lib
-Attempting to plot multiple output predictions under the same 
course of ground truth times
'''

import sys
import numpy as np
import matplotlib.pyplot as plt

# Flags
EXTENDED_MATH_OUTPUT = 1


# Constants

MAX_RANGE_CONSIDERED=15*10 
	# if outside this range from first and last gt, bite doesn't matter
MAX_BITES=100
NOT_MATCHED=-99999 #sentinel used during matching
NOT_COUNTED=-99998 # bite outside evaluated range

NUM_PRED_FILES=len(sys.argv)-2 # all files after executable and gt are predictions


total_gt_bites = np.zeros((NUM_PRED_FILES,1))
gt_bite_indices=np.zeros((NUM_PRED_FILES,MAX_BITES))
total_comp_bites = np.zeros((NUM_PRED_FILES,1))
comp_bite_indices=np.zeros((NUM_PRED_FILES,MAX_BITES))



# Check Usage
if len(sys.argv) < 3:
	print("Usage:  eval [gt.txt] [pred1.txt]")
	print("\tor...")
	print("\t\t eval [gt.txt] [pred1.txt] [pred2.txt] ... [pred_n.txt]")
	exit(0)




#Read Ground Truth
fpt = open(sys.argv[1], 'r')
#format is gt is: [bite number#] [index#] [hand] [utensil] [location] [food]
gt_bite_indices=([int(line.split()[1]) for line in fpt]) 
total_gt_bites=len(gt_bite_indices)




for i in range(NUM_PRED_FILES):

	#Read Pred Times
	fpt = open(sys.argv[2], 'r')
	#format is pred is: [index#]
	temp=([int(line.split()[0]) for line in fpt])
	comp_bite_indices[i,0:len(temp)]=temp[0:len(temp)]
	fpt.close()


	total_comp_bites[i]=len(temp)


# Plotting
plot_colors=['r','b','g','k','m','t']
num_colors=len(plot_colors)
dot_graphics=['o','^','d','V','*']
num_dots=len(dot_graphics)

plt.figure(1)



for i in range(NUM_PRED_FILES):
	#plot
	x=comp_bite_indices[i,0:int(total_comp_bites[i])]
	y=np.ones((int(total_comp_bites[i]),1))*i

	# Cycle through dot and color combos
	plt.plot(x,y,plot_colors[i%num_colors]+dot_graphics[i%num_dots])


#Add Ground Truth at top
x=gt_bite_indices[0:int(total_gt_bites)]
y=np.ones((int(total_gt_bites),1))*NUM_PRED_FILES
plt.plot(x,y,'kd')

plt.savefig('test.png')