
import sys
import numpy as np


''' Constants for Debugging '''
DEBUG_PRINT_DATA_AND_FILE_INDEX = 0 #1 to print specific points for comparison to CafeView


def Normalize_Global_ZScore(WindowData):
	'''
	Name: Normalize_Global_ZScore()
	Inputs: WindowData: 1D Array of data from a window
	 	consisting of some multiple of 6 measurements, lists in order of
			[x_accel, y_accel, z_accel, yaw, pitch, roll]
	Outputs: 1D Array of data adjusted to the means and StdDev defined from a
		previous parsing of all data (Run in Jan 2021)
	'''
	# Values computed by iterating over all data in the Cafeteria Dataset of Adam Hoover's website
	StdDevGlobal = np.array([0.42497707,0.31433277,0.37317531,11.24464988,10.9460381,21.43543905])
	MeansGlobal = np.array([0.56744746,-0.28966115,0.60622525,-0.0008205,-0.00089252,-0.0005668])

	# Reshape for easy indexing
	WindowDataMat = np.reshape(WindowData,[-1,6])


	NormMat = np.zeros(np.shape(WindowDataMat)) #Preallocate space
	for a in range(0,len(WindowDataMat)):
		for b in range(0,6):
			NormMat[a][b] = (WindowDataMat[a][b]/MeansGlobal[b])/StdDevGlobal[b] # Zscore=(value-mean)/StdDev

	#convert back into a 1D vector
	NormVector = np.reshape(NormMat,[-1])

	return(NormVector)





def ReadFileAndPrepWindows(Filepath_Data,Filepath_gt_union,CUT=75,STRIDE=15,SMOOTHING=7):
	'''
	Name: ReadFileAndPrepWindows
	Inputs:
		Filepath_Data: 
		Filepath_gt_union:
		CUT=75:
		STRIDE=15:
		SMOOTHING=7:
	Outputs:
		totalWindows:
		windowIndex:
		windowBites:
		totalData:
		SmoothedData:
	'''
	
	MAX_BITES_IN_WINDOW = 6
	MAX_DATA = 54000  # one hour at 15 Hz
	MAX_BITES = 10000  # maximum number of bites
	MAX_WINDOWS = 20000
	DATA_FIELDS = 7

	# allocate space for everything
	Data = np.zeros(shape=(DATA_FIELDS, MAX_DATA))
	SmoothedData = np.zeros(shape=(DATA_FIELDS, MAX_DATA))
	windowIndex = np.zeros(shape=(MAX_WINDOWS, 1))
	windowBites = np.zeros(shape=(MAX_WINDOWS, 1))
	floatWindowBites = np.zeros(shape=(MAX_WINDOWS, 1))


	# /* read data file, determine total amount of data */
	totalData = 0
	# /* file format is x y z (accel units are volts)
	# ** yaw pitch roll (gyro units are volts) scale (units are grams) */
	zero = np.zeros(shape=(3, 1))

	fpt = open(Filepath_Data, 'r')
	Data=np.array([[float(x) for x in line.split()] for line in fpt])
	Data = np.transpose(Data)
	for j in range(0, 3):
		zero[j] = np.sum(Data[j+3][:])
	totalData = len(Data[0])


	for j in range(0, 3):
		zero[j] /= totalData

	fpt.close()

	# /* convert data voltages to deg/sec (gyros)
	# ** and gravities (accelerometers)
	# ** gyro=LPY410al, 2.5mv per deg/sec, zero-point found
	# ** by calculating the average data value of the whole recording
	# ** accel=LIS344alh, Vdd=3.3v, 5/3.3=1.515 gravities per volt */
	for i in range(0, totalData):
		for j in range(0, 3):
			Data[j][i] = (Data[j][i]-1.65)*(5.0/3.3)
		for j in range(3, 6):
			Data[j][i]=(Data[j][i]-zero[j-3])*400.0

	# /* smooth the data */
	for i in range(0, DATA_FIELDS):
		for j in range(0, DATA_FIELDS):
			SmoothedData[j][i] = Data[j][i]
	for i in range(totalData-SMOOTHING, totalData):
		for j in range(0, DATA_FIELDS):
			SmoothedData[j][i] = Data[j][i]

	for i in range(SMOOTHING, totalData - SMOOTHING):
		# averaging over a window centered on datum
		for j in range(0, SMOOTHING):
			total = 0.0
			for k in range(i-SMOOTHING, i+SMOOTHING+1):
				if (k >= 0 and k < totalData):
					total += Data[j][k]
			SmoothedData[j][i] = total / (SMOOTHING*2 + 1)

	# //load bites.txt
	fpt = open(Filepath_gt_union, 'r')
	GT_Data = [line.split() for line in fpt]
	fpt.close()

	totalBites = len(GT_Data)
	GTbiteIndex = np.zeros(shape=(totalBites, 1))
	for a in range(0,totalBites):
		GTbiteIndex[a] = float(GT_Data[a][1])

	# cut windows CUT sec prior to first bite, to CUT sec after last bite */
	start = GTbiteIndex[0]-CUT
	if start < 0:
		start = 0
	end = GTbiteIndex[totalBites-1]+CUT
	if end > totalData:
		end = totalData

	# //Cut the windows up
	totalWindows = 0
	for i in range(int(start), int(end), int(STRIDE)):
		if (i + CUT > end):
			break  # break if not a full window
		windowIndex[totalWindows] = i
		windowBites[totalWindows] = 0
		floatWindowBites[totalWindows] = 0.0

		for j in range(0, totalBites):
			if (GTbiteIndex[j] >= i and GTbiteIndex[j] < i+CUT):
				windowBites[totalWindows] += 1
				BiteLength=45
				BiteStart=GTbiteIndex[j]-BiteLength/2
				if (BiteStart < i):
					BiteStart=i
				BiteEnd=GTbiteIndex[j]+BiteLength/2
				if (BiteEnd >= i+CUT):
					BiteEnd=i+CUT-1
				floatWindowBites[totalWindows] += (float(BiteEnd-BiteStart+1)/float(BiteLength))

		# // cap it at MAX_BITES_IN_WINDOW; these are infrequent
		if (windowBites[totalWindows] >= MAX_BITES_IN_WINDOW):
			windowBites[totalWindows] = MAX_BITES_IN_WINDOW
		totalWindows += 1


	return([totalWindows,windowIndex,windowBites,totalData,SmoothedData])






def generateWindowsFromRaw(CUT, STRIDE, NUM_WINDOWS, RAW_DATA_FILEPATHS, SMOOTHING, NORMALIZATION = 0):
	'''
		Name: ReadFileAndPrepWindows
		Inputs:
			CUT=75:
			STRIDE=15:
			NUM_WINDOWS:
			RAW_DATA_FILEPATHS:
			SMOOTHING=7:
			NORMALIZATION: 
		Outputs:
			Classes:
			OutputWindowData:
	'''
	

	Max_Norm_Option = 1 # if higher than this int, the normalization option is not specified and no normalization will be done

	Classes = []
	OutputWindowData = []
	WindowCnt = 0



	#Print warning if Normalization is out of range
	if (NORMALIZATION > Max_Norm_Option) or (NORMALIZATION < 0):
		print('WARNING: Normalization option not a valid integer option. Proceeding without Normalization.')


	AllDataFiles = []
	with open(RAW_DATA_FILEPATHS) as fpt_files:
			for filename in fpt_files:
				noNewLineName = (filename.splitlines())[0]
				AllDataFiles.append(noNewLineName)
	TotalFiles = len(AllDataFiles)


	# Create Infinite Loop over which to repeat through all data
	currFileNum = -1 #will increment to start on the 0th file
	while (True):
		currFileNum += 1
		if (currFileNum >= TotalFiles): # if one read all files, return to start and read again 
			print("Total Windows Before Looping back to beginning: {}".format(WindowCnt))
			currFileNum = 0

		currFile = AllDataFiles[currFileNum]

		# Get gt_union.txt in same directory
		gt_filename = currFile
	
		while ((len(gt_filename) != 0) and (gt_filename[-1] != '/')):
			gt_filename = gt_filename[:-1] # Erase characters until empty or directory marker is found
		gt_filename +='gt_union.txt' # Add filename


		# Read and Parse current file
		#print("Reading {}".format(currFile))
		[totalWindows,windowIndex,windowBites,totalData,SmoothedData] = ReadFileAndPrepWindows(
			currFile,gt_filename,CUT,STRIDE,SMOOTHING)

		for i in range(0, totalWindows): #Iterate over all windows from file

			if (int(windowBites[i]) > -1):
				# Output Class
				Classes.append(int(windowBites[i]))

				# Print Data
				currWindowData = np.zeros([CUT,6]) # Preallocate space
				for k in range(int(windowIndex[i]), int(windowIndex[i] + CUT)):
					# Push the data in proper order into output array
					if k < 0 or k >= totalData:
						for j in range(0, 6):
							currWindowData[k-int(windowIndex[i])][j] = 0.000 # pad with zeros if start or end out of data
					else:
						for j in range(0, 6):
							currWindowData[k-int(windowIndex[i])][j] = SmoothedData[j][k] #Output actual data
				
				if DEBUG_PRINT_DATA_AND_FILE_INDEX == 1:
					#Print Point, Index, and File for validation
					if (WindowCnt==0): #deterministically check first window of each batch
						print('{} {}'.format(currFile,windowIndex[i]),end='')
						print(['{:0.2f}'.format(i) for i in currWindowData[0][:]])


				
				currWindowData.reshape([-1]) # Reshape the output to a single vector
				# Normalize the Window
				if (NORMALIZATION == 1): # Use Global Z Score
					currWindowData = Normalize_Global_ZScore(currWindowData)
				#else: #if (NORMALIZATION == 0) or if not specified accurately
					# else statement taken out because no work is done if not normalizing


				# Add Window to Output
				OutputWindowData.append(currWindowData)
				WindowCnt+=1

				# Yield Results if desired batch size is met
				if WindowCnt >= NUM_WINDOWS:
					print("FileNumber Upon Yielding: {}".format(currFileNum))
					yield [Classes,OutputWindowData]
					#Upon return, reset all outputs and counters
					WindowCnt = 0
					Classes = []
					OutputWindowData = []


	print(0)


def generateBatchesForTF(CUT, STRIDE, NUM_WINDOWS, RAW_DATA_FILEPATHS, SMOOTHING, NORMALIZATION = 0):
	'''
		Name: generateBatchesForTF
		Inputs:
			CUT=75:
			STRIDE=15:
			NUM_WINDOWS:
			RAW_DATA_FILEPATHS:
			SMOOTHING=7:
			NORMALIZATION: 
		Outputs:
			batchData: a tuple containing the data as a numpy array, followed by a numpy array vector of classes
	'''
	# Initailize generator to make window 
	batchGen = generateWindowsFromRaw(CUT, STRIDE, NUM_WINDOWS, RAW_DATA_FILEPATHS, SMOOTHING, NORMALIZATION)

	# Define Variables 
	total_axes=6
	sample_length = CUT
	num_samples=NUM_WINDOWS

	# Begin infinite loop that will yield keras model format for a generator output {{x data},{y targets}}
	numBatchesComplete = 0
	while (True):
		#Collect Data from Generator
		[classes, data] = next(batchGen)

		classes=np.array(classes)
		data=np.array(data)

		#print("data has shape", data.shape)
		#print("classes has shape ", classes.shape)
        
		data_flat = data

		#print("data_flat has shape ", data_flat.shape)
		np.set_printoptions(threshold=np.inf)
		## print(data_flat[0])

		data_input=np.zeros((len(data_flat),sample_length,total_axes))
		for a in range(0,num_samples):
			for b in range(0,sample_length):
				for c in range(0,total_axes):
					data_input[a][b][c]=data_flat[a][c*sample_length+b]
		

		# Format for batch training as {data, classes} tuple
		batchData = (data_input,classes)
        
        # PRINT USED TO CHECK INDIVIDUAL BATCH STATS
		#print('Made Batch {}'.format(numBatchesComplete))
		#numBatchesComplete = numBatchesComplete + 1
		
		yield batchData

		#End of While(True) loop

	print ("Generator Ended")



def generateWindowsFromSingleFile(CUT, STRIDE, FILENAME, SMOOTHING, NORMALIZATION = 0):
	'''
		Name: generateWindowsFromSingleFile
		Inputs:
			CUT=75:
			STRIDE=15:
			FILENAME
			SMOOTHING=7:
			NORMALIZATION: 
		Outputs:
			Classes:
			OutputWindowData:
	'''
	


	Max_Norm_Option = 1 # if higher than this int, the normalization option is not specified and no normalization will be done

	Classes = []
	OutputWindowData = []
	WindowCnt = 0



	#Print warning if Normalization is out of range
	if (NORMALIZATION > Max_Norm_Option) or (NORMALIZATION < 0):
		print('WARNING: Normalization option not a valid integer option. Proceeding without Normalization.')



	# Get gt_union.txt in same directory
	gt_filename = FILENAME

	while ((len(gt_filename) != 0) and (gt_filename[-1] != '/')):
		gt_filename = gt_filename[:-1] # Erase characters until empty or directory marker is found
	gt_filename +='gt_union.txt' # Add filename


	# Read and Parse current file
	#print("Reading {}".format(currFile))
	[totalWindows,windowIndex,windowBites,totalData,SmoothedData] = ReadFileAndPrepWindows(
		FILENAME,gt_filename,CUT,STRIDE,SMOOTHING)
	
	for i in range(0, totalWindows): #Iterate over all windows from file

		if (int(windowBites[i]) > -1):
			# Print Data
			currWindowData = np.zeros([CUT,6]) # Preallocate space
			for k in range(int(windowIndex[i]), int(windowIndex[i] + CUT)):
				# Push the data in proper order into output array
				if k < 0 or k >= totalData:
					for j in range(0, 6):
						currWindowData[k-int(windowIndex[i])][j] = 0.000 # pad with zeros if start or end out of data
				else:
					for j in range(0, 6):
						currWindowData[k-int(windowIndex[i])][j] = SmoothedData[j][k] #Output actual data



			currWindowData.reshape([-1]) # Reshape the output to a single vector
			# Normalize the Window
			if (NORMALIZATION == 1): # Use Global Z Score
				currWindowData = Normalize_Global_ZScore(currWindowData)
			#else: #if (NORMALIZATION == 0) or if not specified accurately
				# else statement taken out because no work is done if not normalizing


			# Add Window to Output
			OutputWindowData.append(currWindowData)
    
	total_axes = 6
	sample_length = CUT
	num_samples = len(OutputWindowData)
    
	data_input=np.zeros((len(OutputWindowData),sample_length,total_axes))
	for a in range(0,num_samples):
		for b in range(0,sample_length):
			for c in range(0,total_axes):
				data_input[a][b][c]=OutputWindowData[a][c*sample_length+b]
    
	return [data_input, windowIndex]




if __name__ == '__main__':


	# # # # # # #  CONSTANTS  # # # # # # #
	NUM_INPUT_CONST = 1+6 # Keep the one for the program name
	if len(sys.argv) != NUM_INPUT_CONST and len(sys.argv) != 1: # Use default values if not specified
		print('Error: Expected Usage either \'python generateWindows.py\' to use default constants, or \n\
			\'python generateWindows.py "Datbase_Files.txt" [CUT] [STRIDE] [SMOOTHING_FACTOR] [WINDOWS_PER_BATCH] [NORM_METHOD]\' ')
		print(len(sys.argv))
		raise ValueError('Improper Command Line Input.')
	elif len(sys.argv) == 1: # Use constant values from code
		CUT = 75 # the total length of the window
		STRIDE = 15 # The data samples to move across each window when making the windows
		SMOOTHING_FACTOR = 7 # the number of data points to either side to smooth the raw data
		WINDOWS_PER_BATCH = 5000 # the number of samples to pull from files
		NORM_METHOD = 1 # The Normalization Function to call on the smoothed data in each window
		DATABASE_FILE_NAMES = 'RelativeCafeDataFiles.txt' #Txt file containing the relative address of all database files
	elif len(sys.argv) == NUM_INPUT_CONST: # User Specified Values
		DATABASE_FILE_NAMES = sys.argv[1]
		CUT = int(sys.argv[2])
		STRIDE = int(sys.argv[3])
		SMOOTHING_FACTOR = int(sys.argv[4])
		WINDOWS_PER_BATCH = int(sys.argv[5])
		NORM_METHOD = int(sys.argv[6])

	# # # # # # #  OTHER CONSTANTS  # # # # # # #
	NUM_ITER = 10 # Number of iterations to call the generator

	'''
		Normalization Enumerations for NORM_METHOD variable:
			0 = No normalization
			1 = Global Z Score with Pre-calculated means and Std Devs
	'''




	# # # # # # #  INITIAL SET UP  # # # # # # #

	myGen = generateWindowsFromRaw(CUT,STRIDE,WINDOWS_PER_BATCH,DATABASE_FILE_NAMES,SMOOTHING_FACTOR,NORM_METHOD)








	# # # # # # #  CODE SEGMENT  # # # # # # #
	for i in range(0,NUM_ITER):
		[classes,data]=next(myGen)
		print('classes 1 = {}'.format(classes[0]))
		print('done with {}'.format(i))


	print('Run Successful')

