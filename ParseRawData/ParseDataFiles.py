''' /********************************************************************************
  * This program reads a pedometer data file and cuts out windows
  *  of bites. Bite indices are determined via bites.txt.
  *
  * The data is cut from 5 sec prior to first bite to 10 sec after
  * last bite.  Each window is 5 sec.
  *
  * Usage: python pycut.py [CUT] [STRIDE] [bite_data_filename.txt] [gt_union.txt]
  *
  * CUT is the window size in datum (each second is 15 datum)
  * STRIDE is the amount of datum to slide the window each time
  * Output is printed to stdout, needs to be piped to a file
  * James Jolly
  ********************************************************************************/
'''

import sys
import numpy


def ParseFile(InputFileName):
	MAX_DATA = 54000  # one hour at 15 Hz
	MAX_BITES = 10000  # maximum number of bites
	SMOOTHING = 7  # smoothing window
	MAX_WINDOWS = 20000
	DATA_FIELDS = 7
	TOTAL_DATA_FIELDS = 17
	PRINT_INT = True # determines whether classifier label is an int or float
	SAMPLES_PER_BITE = 7  # number of samples used per bite

	# allocate space for everything
	Data = numpy.zeros(shape=(DATA_FIELDS, MAX_DATA))
	SmoothedData = numpy.zeros(shape=(DATA_FIELDS, MAX_DATA))


	# /* read data file, determine total amount of data */
	totalData = 0
	# /* file format is x y z (accel units are volts)
	# ** yaw pitch roll (gyro units are volts) scale (units are grams) */
	zero = numpy.zeros(shape=(3, 1))

	# //scan and throw away header information
	fpt = open(InputFileName, 'r')
	for line in fpt:
		if line == "\n":
			print("File Has Duplicate Ending")
			continue
		
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
	
	ReturnValue = list()
	for i in range(0,DATA_FIELDS):
		ReturnValue.append((SmoothedData[i][SMOOTHING:totalData-SMOOTHING]))
	return ReturnValue
	''' Removing print Statement
	with open(OutputFileName,'w') as fpt:
		# /* print out bite data */
		for i in range(0, totalData):
			print("{:.5f}".format(SmoothedData[0][i]), end='',file=fpt) #print without tab on first
			for j in range(1, 6):
				print("\t", "{:.5f}".format(SmoothedData[j][i]), end='',file=fpt)
			print(file=fpt)
	'''


if __name__ == '__main__':
	#MyReturn = ParseFile('../../Database/p413/c1/20120418113054001.txt')
	
	NUM_PARSED_FIELDS = 6
	VarianceTotals = numpy.zeros(shape=(6,1))
	Variance_ZM_Totals = numpy.zeros(shape=(6,1))
	MeansTotals = numpy.zeros(shape=(6,1))
	Variances_ZM = numpy.zeros(shape=(6,1))
	Variances = numpy.zeros(shape=(6,1))
	Means = numpy.zeros(shape=(6,1))
	StdDevs_ZM = numpy.zeros(shape=(6,1))
	StdDevs = numpy.zeros(shape=(6,1))
	TotalPopulation = 0
	
	CALC_MEANS = [0.56744746,-0.28966115,0.60622525,-0.0008205,-0.00089252,-0.0005668]


	with open(sys.argv[1]) as fpt_files:
		for filename in fpt_files:
			noNewLineName = (filename.splitlines())[0]
			print("Reading {}".format(noNewLineName))
			Data = ParseFile(noNewLineName)
			
			# Keep track of total samples
			currPopulation = len(Data[0])
			TotalPopulation += currPopulation
			
			# Iterate over all smoothed return values
			for i in range(0,currPopulation): 
				for j in range(0,NUM_PARSED_FIELDS):
					VarianceTotals[j]+=numpy.square(abs(Data[j][i]-CALC_MEANS[j]))
					Variance_ZM_Totals[j]+=numpy.square(Data[j][i])
					MeansTotals[j]+=Data[j][i]

	
	
	print("Creating Outputs...")
	
	# Once totals are complete, find Variance
	for i in range(0,NUM_PARSED_FIELDS):
		Variances_ZM[i] = Variance_ZM_Totals[i]/TotalPopulation
		Variances[i] = VarianceTotals[i]/TotalPopulation
		Means[i] = MeansTotals[i]/TotalPopulation

	#Take square root of variance to get StdDev
	for i in range(0,NUM_PARSED_FIELDS):
		StdDevs_ZM[i] = numpy.sqrt(Variances_ZM[i])
		StdDevs[i] = numpy.sqrt(Variances[i])

		#print("StdDev{} = {}".format(i,StdDevs[i]))

		
	print("Printing Outputs...\n")
	for i in range(0,NUM_PARSED_FIELDS):
		print("Variance_ZM_Totals{} = {}".format(i,Variance_ZM_Totals[i]))
	print()
	for i in range(0,NUM_PARSED_FIELDS):
		print("Variances_ZM{} = {}".format(i,Variances_ZM[i]))
	print()
	for i in range(0,NUM_PARSED_FIELDS):
		print("StdDev_ZM{} = {}".format(i,StdDevs_ZM[i]))
	print()

	for i in range(0,NUM_PARSED_FIELDS):
		print("Means{} = {}".format(i,Means[i]))
	print()

	for i in range(0,NUM_PARSED_FIELDS):
		print("VarianceTotals{} = {}".format(i,VarianceTotals[i]))
	print()
	for i in range(0,NUM_PARSED_FIELDS):
		print("Variances{} = {}".format(i,Variances[i]))
	print()

	for i in range(0,NUM_PARSED_FIELDS):
		print("StdDev{} = {}".format(i,StdDevs[i]))

