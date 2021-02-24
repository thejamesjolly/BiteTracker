'''
  /********************************************************************************
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
import numpy as np

MAX_DATA = 54000  # one hour at 15 Hz
MAX_BITES = 10000  # maximum number of bites
SMOOTHING = 7  # smoothing window
MAX_WINDOWS = 20000
DATA_FIELDS = 7
TOTAL_DATA_FIELDS = 17
DEBUG = 0  # debug modes 1 and 2 for alternate prints
PRINT = 1  # print data
PRINT_INT = True # determines wheter classifier label is an int or float
SAMPLES_PER_BITE = 7  # number of samples used per bite

# allocate space for everything
Data = np.zeros(shape=(DATA_FIELDS, MAX_DATA))
SmoothedData = np.zeros(shape=(DATA_FIELDS, MAX_DATA))
windowIndex = np.zeros(shape=(MAX_WINDOWS, 1))
windowBites = np.zeros(shape=(MAX_WINDOWS, 1))
floatWindowBites = np.zeros(shape=(MAX_WINDOWS, 1))

if len(sys.argv) != 5:
	sys.exit("Usage: python pycut.py [CUT] [STRIDE] [bite_data_filename.txt] [gt_union.txt]")


CUT = int(sys.argv[1])
STRIDE = int(sys.argv[2])

# /* read data file, determine total amount of data */
totalData = 0
# /* file format is x y z (accel units are volts)
# ** yaw pitch roll (gyro units are volts) scale (units are grams) */
zero = np.zeros(shape=(3, 1))

# //scan and throw away header information
fpt = open(sys.argv[3], 'r')
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
fpt = open(sys.argv[4], 'r')
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

	# // cap it at 100; these are infrequent
	if (windowBites[totalWindows] > 5):
		windowBites[totalWindows] = 6
	totalWindows += 1

if (DEBUG == 1):
	print("totalWindows:", totalWindows)

# /* print out cut bite data */
if (PRINT == 1):
	for i in range(0, totalWindows):
		if (DEBUG == 1):
			print("{:.3f} {:.3f} {:.3f}".format(windowIndex[i], windowIndex[i]+CUT, windowBites[i]))
		else:
			if (int(windowBites[i]) > -1):
				if (PRINT_INT == True):
					#print('{d}'.format(windowBites[i]), end='')  # class is number of bites
					print(int(windowBites[i]), end='')
				else:
					print("{:.3f}".format(float(floatWindowBites[i])), end='')  # class is number of bites
				for k in range(int(windowIndex[i]), int(windowIndex[i] + CUT)):
					if k < 0 or k >= totalData:
						for j in range(0, DATA_FIELDS-1):
							# pad with zeros if start or end out of data
							print("\t0.000", end='')
					else:
						for j in range(0, 6):
							print("\t", "{:.3f}".format(
								SmoothedData[j][k]), end='')
					print()
