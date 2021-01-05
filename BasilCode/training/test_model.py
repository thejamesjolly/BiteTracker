# Basil Lin
# step counter project
# program to test model with window_size input file
# Usage: python3 test_model.py [model_name.h5] [window_size] [input_file.txt] [steps.txt] [print 0|1] [debug.csv]
# print input allows you to print predicted_step_indices for STEPCOUNTERVIEW
# input file must be first cut and normalized
# if [debug.csv] is populated, a debug file showing predictions for each window will be created as [debug.csv]
# if [debug.csv] exists, it will be appended. If not, it will be created

# globals for switching program functionality
TOTAL_FEATURES = 3  # total number of features (3 for X,Y,Z acceleration)
RANGE = 7           # Range in datum for acceptable pairing with GT (half a second, or 7 sensor readings)
TESTING_STRIDE = 1  # don't change, always test with a stride of 1 datum

# import system for command line arguments
import sys

# checks for correct number of command line args
debug = 0
if len(sys.argv) != 6:
	if len(sys.argv) == 7:  # debug on
		debug = 1
	else:                   # incorrect number of command line arguments
		sys.exit("Usage: python3 test_model.py [model_name.h5] [window_size] [input_file.txt] [steps.txt] [print 0|1] [debug.csv]")

window_size = int(sys.argv[2])

# import other stuff so I don't slow down the Usage warning
import warnings
warnings.simplefilter(action='ignore', category=FutureWarning) #suppresses future warnings
import logging
logging.getLogger('tensorflow').disabled = True
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
from tensorflow import keras
import numpy as np
import time
import csv

print("Tensorflow version:", tf.__version__)
print("Python version:", sys.version)

# open input and ground truth files
fpt = open(sys.argv[3], 'r')
rawdata = [[float(x) for x in line.split()] for line in fpt]
fpt.close()
fpt = open(sys.argv[4], 'r')
gt_steps = [[x for x in line.split()] for line in fpt]
gt_steps = [int(x[0]) for x in gt_steps]
first_step = min(gt_steps)
fpt.close()

# load keras model
model = tf.keras.models.load_model(sys.argv[1])

# copy to labels (steps per window) and features (sensor measurement axes)
print("Seperating labels and features...")
rawdata = np.array(rawdata)
labels = rawdata[:,0]
num_samples = len(labels)
features_normalized = rawdata[:,1:]
print("features_normalized has shape", features_normalized.shape)

# copies features from 2D matrix features_normalized[#windows][x0 y0 z0 x1 y1 z1 ...] to 3D matrix features_input[#windows][window_length][#features]
# first dimension contains 1 measurement of each feature (X,Y,Z)
# second dimension contains the number of measurements in each time window (window_size)
# third dimension contains the total number of windows, or total samples
print("Reshaping normalized features for training...")
features_input = np.zeros((len(features_normalized), window_size, TOTAL_FEATURES))
for i in range(0, num_samples):
	for j in range(0, window_size):
		for k in range(0, TOTAL_FEATURES):
			features_input[i][j][k] = features_normalized[i][k*window_size + j]
print("features_input has shape", features_input.shape)

# test model on features
print("Testing...")
loss = model.evaluate(features_input, labels)
print("Validation loss:", loss[1])
predictions = model.predict(features_input)

# find average difference
predicted_step_indices = []
predicted_steps = 0
prev_predicted_steps = 0
predictions = model.predict(features_input)
gt_steps_sum = 0

# write header columns to debug.csv
if debug == 1:
	filename = sys.argv[6]
	if os.path.isfile(filename): 
		debug_file = open(filename, "a+")
	else:
		debug_file = open(filename, "w")
		debug_file.write("Window #,Window start index,Window stop index,GT steps in window,Predicted steps in window,")
		debug_file.write("GT running step sum,Predicted running step sum,Difference,Index output\n")

# loop through all windows
for i in range(0, num_samples):
	# print(labels[i], "\t", predictions[i][0])
	# if predictions[i][0] < 0:
	# 	print(predictions[i][0], "less than 0 at", i)
	# 	predictions[i][0] = 0
	predicted_steps += predictions[i][0] / window_size * TESTING_STRIDE # integrate window to get step count
	gt_steps_sum += labels[i] / window_size * TESTING_STRIDE            # calculate running gt step sum
	step_delta = int(predicted_steps) - prev_predicted_steps            # find difference in steps for each window shift
	prev_predicted_steps = int(predicted_steps)
	# write information to debug.csv
	if debug == 1:
		debug_file.write(str(i) + "," + str(first_step-int(window_size) + TESTING_STRIDE*i) + "," + str(first_step + TESTING_STRIDE*i-1) + ",")
		debug_file.write(str(labels[i]) + "," + str(predictions[i][0]) + "," + str(gt_steps_sum) + ",")
		debug_file.write(str(predicted_steps) + "," + str(step_delta) + ",")
	# mark detected steps when the number of steps changes
	if step_delta > 0:
		for j in range (0, step_delta):
			predicted_step_indices.append(first_step-int(window_size/2) + TESTING_STRIDE*i)
		if debug == 1:
			debug_file.write(str(first_step-int(window_size/2) + TESTING_STRIDE*i) + "\n")
	elif debug == 1:
		debug_file.write("None\n")

if debug == 1:
	debug_file.close()

print("Average steps detected per slide:", predicted_steps/num_samples)

# calculate difference
predicted_steps = len(predicted_step_indices)
actual_steps = len(gt_steps)
diff = predicted_steps-actual_steps

# write steps detected if user has print=1
if (int(sys.argv[5]) == 1):
	steps_file = open("predicted_steps.txt", "w")
	steps_file.write('\n'.join(map(str, predicted_step_indices)))
	steps_file.close()

# loop through and get FP, FN, TP
gt_steps.sort()
i = j = fp = fn = tp = 0
while i < predicted_steps and j < actual_steps:
	if predicted_step_indices[i] < gt_steps[j] - RANGE:
		i += 1
	elif predicted_step_indices[i] > gt_steps[j] + RANGE:
		j += 1
	else:
		tp += 1
		i += 1
		j += 1

fn = actual_steps - tp
fp = predicted_steps - tp

# calculate SDA metrics
if (tp + fp == 0) or (tp + fn == 0) or (tp == 0):
	ppv = -1
	sensitivity = -1
	f1 = -1
else:
	ppv = tp / (tp + fp)
	sensitivity = tp / (tp + fn)
	f1 = 2*ppv*sensitivity / (ppv + sensitivity)

# print testing results
print("Predicted steps:", predicted_steps)
print("Actual steps:", actual_steps)
print("Difference in steps:", abs(diff))
print("TP:", tp)
print("FP:", fp)
print("FN:", fn)
print("PPV:", ppv)
print("Sensitivity:", sensitivity)
print("RCA:", predicted_steps/actual_steps)
print("SDA:", f1)
print("----------------------------------- END TEST -----------------------------------")