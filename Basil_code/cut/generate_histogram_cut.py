# Basil Lin
# step counter project
# generates histogram based on given cut sensor data (can be normalized and balanced)
# Usage: python3 generate_histogram_cut.py [input_cut.txt] [histogram_output.eps]

# import sys
import sys

# checks if input args are correct
if len(sys.argv) != 3:
	sys.exit("Usage: python3 generate_histogram_cut.py [input_cut.txt] [histogram_output.eps]")

# import stuff
import warnings
import numpy as np
import random
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import csv

# open file
print("Loading file...")
with open(sys.argv[1], newline='\n') as fpt:
	reader = csv.reader(fpt, delimiter='\t')
	data = list(reader)

histdata = list(float(line[0]) for line in data)    # get column 0 gt steps in window
histdata = np.array(histdata)                       # convert to array

# plot histogram of steps
print("Plotting histogram...")
plt.figure(1)
figure = plt.hist(histdata, bins=range(0, 14, 1), color='white', edgecolor='black', linewidth=1.2, histtype='bar')
plt.xticks(np.arange(0, 14, step=1))
plt.xlabel("Steps in a Window")
plt.ylabel("Frequency")
plt.legend(loc='upper center')
# plt.savefig(sys.argv[2])
plt.savefig(sys.argv[2], format='eps')
