
import sys
import numpy as np
 


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

	# //scan and throw away header information
	fpt = open(Filepath_Data, 'r')
	for line in fpt:
		Data[0][totalData],Data[1][totalData],Data[2][totalData],Data[3][totalData],Data[4][totalData],Data[5][totalData],Data[6][totalData] = line.split()
		for j in range(0, 3):
			zero[j] += Data[j+3][totalData]
		totalData += 1

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
	# //allocate space for ground truth data
	GTbiteIndex = np.zeros(shape=(MAX_BITES, 1))
	# //read bite ground truth file
	totalBites = 0
	for line in fpt:
		trash, GTbiteIndex[totalBites], trash,trash,trash,trash = line.split()
		totalBites += 1
	fpt.close()

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






def generateWindowsFromRaw(CUT, STRIDE, RAW_DATA_FILEPATHS, SMOOTHING, NUM_WINDOWS):
	Classes = []
	OutputWindowData = []
	WindowCnt = 0

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
			return
			currFileNum = 0

		currFile = AllDataFiles[currFileNum]

		# Get gt_union.txt in same directory
		gt_filename = currFile
	
		while ((len(gt_filename) != 0) and (gt_filename[-1] != '/')):
			gt_filename = gt_filename[:-1] # Erase characters until empty or directory marker is found
		gt_filename +='gt_union.txt' # Add filename


		# Read and Parse current file
		print("Reading {}".format(currFile))
		# [totalWindows,windowIndex,windowBites,totalData,SmoothedData] = ReadFileAndPrepWindows(
			# currFile,gt_filename,75,15,7)


	for i in range(0, totalWindows): #Iterate over all windows from file

		if (int(windowBites[i]) > -1):
			# Print Class
			Classes.append(int(windowBites[i]))

			# Print Data
			currWindowData = np.zeros(CUT,6) # Preallocate space
			for k in range(int(windowIndex[i]), int(windowIndex[i] + CUT)):
				# Push the data in proper order into output array
				if k < 0 or k >= totalData:
					for j in range(0, 6):
						currWindowData[k][j] = 0.000 # pad with zeros if start or end out of data
				else:
					for j in range(0, 6):
						currWindowData[k][j] = SmoothedData[j][k] #Output actual data
			

			# Add Window to Output
			currWindowData.reshape([-1]) # Reshape the output to a single vector
			OutputWindowData.append(currWindowData)
			WindowCnt+=1

			# Yield Results if desired batch size is met
			if WindowCnt >= NUM_WINDOWS:
				yield [Classes,OutputWindowData]
				#Upon return, reset all outputs and counters
				WindowCnt = 0
				Classes = []
				OutputWindowData = []


	print(0)



if __name__ == '__main__':

	Data = np.array([2, 2, 2, 2, 2, 2,1, 2, 3, 4, 5, 6,1, 1, 1, 1, 1, 1,2, 6, 4, 7, 8, 0.5])


	Normalize_Global_ZScore(Data)

	generateWindowsFromRaw(75,15,'RelativeCafeDataFiles.txt',7,15)
	print('Run Successful')

