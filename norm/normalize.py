

import sys
import math
import numpy as np

def Norm_Global_ZScore(cutWindowData):

	[rows,cols] = np.shape(cutWindowData)

	if (cols != 6):
		raise ValueError('Expected array of size [n by 6]')


	StdDevGlobal = np.array([0.42497707,0.31433277,0.37317531,11.24464988,10.9460381,21.43543905])
	#StdDevGlobal_ZM = np.array[0.70894437,0.42744435,0.711877,11.24464991,10.94603814,21.43543906]
	MeansGlobal = np.array([0.56744746,-0.28966115,0.60622525,-0.0008205,-0.00089252,-0.0005668])

	normWindowData = np.zeros((rows,cols))

	currRow = np.array(np.zeros((1,cols)))

	for rover in range(rows):
		# Z score = (x-mu)/sigma = (x-x_bar)/StdDev
		currRow[:] = cutWindowData[rover][:]
		tempRow = np.array(currRow)
		normWindowData[rover,:] = (tempRow - MeansGlobal)/StdDevGlobal



	return normWindowData






if __name__ == '__main__':

	#StdDevGlobal = [0.42497707,0.31433277,0.37317531,11.24464988,10.9460381,21.43543905]
	#StdDevGlobal_ZM = [0.70894437,0.42744435,0.711877,11.24464991,10.94603814,21.43543906]
	
	
	OldData = np.array([[2, 2, 2, 2, 2, 2], [1, 2, 3, 4, 5, 6],[1, 1, 1, 1, 1, 1],[2, 6, 4, 7, 8, 0.5]])


	newData = Norm_Global_ZScore(OldData)
	
	print(0)