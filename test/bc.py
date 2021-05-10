import sys
import numpy as np
import tensorflow as tf
from tensorflow import keras

from ../train/generateWindows.py import ReadFileAndPrepWindows


if __name__ == '__main__':
	DEBUG_PRINTS = 1
	WINDOW_SIZE = 75
	STRIDE = 15
	SMOOTHING = 7

	CUT = WINDOW_SIZE
	WINDOW_STEP = STRIDE


	# # # # # Read in file raw data # # # # #


	currFile = sys.argv[1] # pull data file from command line

	# Get gt_union.txt in same directory
	gt_filename = currFile

	while ((len(gt_filename) != 0) and (gt_filename[-1] != '/')):
		gt_filename = gt_filename[:-1] # Erase characters until empty or directory marker is found
	gt_filename +='gt_union.txt' # Add filename


	# Read and Parse current file
	if DEBUG_PRINTS == 1:
		print("Reading {}".format(currFile))
	[totalWindows,windowIndex,windowBites,totalData,SmoothedData] = ReadFileAndPrepWindows(
		currFile,gt_filename,CUT,STRIDE,SMOOTHING)

	# # # # # Load Network Model # # # # #

	# load keras model
	model = tf.keras.models.load_model(sys.argv[1])


	# # # # # Construct Bite Predictions for Bite Indices # # # # #
	if DEBUG_PRINTS == 1:
		print("Testing...")
	predictions = model.predict(features_input)
	
	for i in range(totalData):
		bites_in_window = predictions[i]
		if (bites_in_window < 0.0):
			bites_in_window = 0.0
		
		FloatBites = FloatBites + (bites_in_window / CUT * STRIDE)
		if (TotalBites < round(FloatBites)):
			TotalBites += 1
			print(windowIndex[i]+300)
	# end of i in range(TotalData) loop



