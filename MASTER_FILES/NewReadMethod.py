'''
Written by: James Jolly
Purpose:
	Testing the fastest way to read files in python to imporve
	performance on generator data
'''



import sys
import time
import numpy as np





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

	if True: #ORIGINAL WAY TO READ, SLOW ACCORDING TO HOOVER
		# //scan and throw away header information
		fpt = open(Filepath_Data, 'r')
		for line in fpt:
			if line == "\n":
				#print("File Has Duplicate Ending")
				continue
			Data[0][totalData],Data[1][totalData],Data[2][totalData],Data[3][totalData],Data[4][totalData],Data[5][totalData],Data[6][totalData] = line.split()
			for j in range(0, 3):
				zero[j] += Data[j+3][totalData]
			totalData += 1

	else: # FASTER OPTION ACCORDING TO HOOVER
		d=[[float(x) for x in line.split()] for line in fpt]
		############ NEED TO TEST OUTPUT TO MAKE IT THE SAME SHAPE AS ABOVE #######



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
		if (line.strip() == ""):
			#print("Gt_union.txt File Has Empty Ending")
			continue
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



def NewReadMethod(ReadMethod,Filepath_Data,Filepath_gt_union,CUT=75,STRIDE=15,SMOOTHING=7):
	'''
	Name: ReadFileAndPrepWindows
	Inputs:
		ReadMethod = 0 for original, 1 for single line fast read
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
	SmoothedData = np.zeros(shape=(DATA_FIELDS, MAX_DATA))
	windowIndex = np.zeros(shape=(MAX_WINDOWS, 1))
	windowBites = np.zeros(shape=(MAX_WINDOWS, 1))
	floatWindowBites = np.zeros(shape=(MAX_WINDOWS, 1))

	
	# /* read data file, determine total amount of data */
	totalData = 0
	# /* file format is x y z (accel units are volts)
	# ** yaw pitch roll (gyro units are volts) scale (units are grams) */
	zero = np.zeros(shape=(3, 1))

	if (ReadMethod==0): #ORIGINAL WAY TO READ, SLOW ACCORDING TO HOOVER
		Data = np.zeros(shape=(DATA_FIELDS, MAX_DATA))
		# //scan and throw away header information
		fpt = open(Filepath_Data, 'r')
		for line in fpt:
			if line == "\n":
				#print("File Has Duplicate Ending")
				continue
			Data[0][totalData],Data[1][totalData],Data[2][totalData],Data[3][totalData],Data[4][totalData],Data[5][totalData],Data[6][totalData] = line.split()
			for j in range(0, 3):
				zero[j] += Data[j+3][totalData]
			totalData += 1
		

	else: # FASTER OPTION ACCORDING TO HOOVER
		fpt = open(Filepath_Data, 'r')
		Data=np.array([[float(x) for x in line.split()] for line in fpt])
		Data = np.transpose(Data)
		for j in range(0, 3):
			zero[j] += np.sum(Data[j+3][:])
		totalData = len(Data[0])
		############ NEED TO TEST OUTPUT TO MAKE IT THE SAME SHAPE AS ABOVE #######

	fpt.close()



	for j in range(0, 3):
		zero[j] /= totalData
		print("Zeros[j] = ",zero[j])

	
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

	if ReadMethod==0:
		# //allocate space for ground truth data
		GTbiteIndex = np.zeros(shape=(MAX_BITES, 1))
		# //read bite ground truth file
		totalBites = 0
		for line in fpt:
			if (line.strip() == ""):
				#print("Gt_union.txt File Has Empty Ending")
				continue
			trash, GTbiteIndex[totalBites], trash,trash,trash,trash = line.split()
			totalBites += 1
		fpt.close()
	else:
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

		# // cap it at MAX_BITES_IN_WINDOW; these are infrequent
		if (windowBites[totalWindows] >= MAX_BITES_IN_WINDOW):
			windowBites[totalWindows] = MAX_BITES_IN_WINDOW
		totalWindows += 1


	return([totalWindows,windowIndex,windowBites,totalData,SmoothedData])








if __name__ == '__main__':
	TEST_File = "/mnt/c/Users/jpjol/Documents/Research/BiteData/p028/c1/20120220173438949.txt"
	GT_File = "/mnt/c/Users/jpjol/Documents/Research/BiteData/p028/c1/gt_union.txt"

	print("Hello World")

	
	start=time.time()
	OldGTBites = NewReadMethod(0,TEST_File,GT_File)
	#[OldTW,OldWI,OldWB,OldTotalData,OldSD] = NewReadMethod(0,TEST_File,GT_File)

	end=time.time()
	print("file read ",end-start," seconds")

	start=time.time()
	NewGTBites = NewReadMethod(1,TEST_File,GT_File)
	#[NewTW,NewWI,NewWB,NewTotalData,NewSD] = NewReadMethod(1,TEST_File,GT_File)

	end=time.time()
	print("file read ",end-start," seconds")
'''
	print("Old smooth data has shape ",np.array(OldGTBites).shape)
	print("New smooth data has shape ",np.array(NewGTBites).shape)
	for a in range(0,5):
		print("Test case {}".format(a))
		print(OldGTBites[a])
		print(NewGTBites[a])

'''


