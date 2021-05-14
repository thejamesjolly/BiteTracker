import sys
import numpy as np
import tensorflow as tf
from tensorflow import keras

from generateWindows import generateWindowsFromSingleFile
from generateWindows import generateBatchesForTF

if __name__ == '__main__':
	DEBUG_PRINTS = 0
	WINDOW_SIZE = 75
	STRIDE = 15
	SMOOTHING = 7
	NORMALIZATION = 1

	CUT = WINDOW_SIZE
	WINDOW_STEP = STRIDE


	# # # # # Read in file raw data # # # # #


	currFile = sys.argv[1] # pull data file from command line
	
	[features_input,windowIndex] = generateWindowsFromSingleFile(CUT, STRIDE, currFile, SMOOTHING, NORMALIZATION)
	#batchGen = generateBatchesForTF(CUT, STRIDE, 50, "DataFiles_fold3.txt", SMOOTHING, NORMALIZATION)
	#features_input = next(batchGen) 
	
	totalData = len(features_input)
	# # # # # Load Network Model # # # # #
	
	

	# load keras model
	model = tf.keras.models.load_model(sys.argv[2])


	# # # # # Construct Bite Predictions for Bite Indices # # # # #
	if DEBUG_PRINTS == 1:
		print("Testing...")
	predictions = model.predict(features_input)
	
	FloatBites = 0
	TotalBites = 0

	'''
	for i in range(50):
		bites_in_window = predictions[i]
		if (bites_in_window < 0.0):
			bites_in_window = 0.0
		
		FloatBites = FloatBites + (bites_in_window / CUT * STRIDE)
		if (TotalBites < np.around(FloatBites)):
			TotalBites += 1
			#print(windowIndex[i]+300)
			
		print("step = {}".format(i))
		print("\t Prediction[i] = {}".format(bites_in_window))
		print("\t FloatBites = {}".format(FloatBites))
		print("\t TotalBites = {}".format(TotalBites))
		
'''
	for i in range(totalData):
		bites_in_window = predictions[i]
		if (bites_in_window < 0.0):
			bites_in_window = 0.0
		
		FloatBites = FloatBites + (bites_in_window / CUT * STRIDE)
		if (TotalBites < np.around(FloatBites)):
			TotalBites += 1
			print("{0:0d}".format(int(windowIndex[i]+300)))
	# end of i in range(TotalData) loop
