import sys
import math
import numpy

if __name__ == '__main__':
	
	#if len(sys.argv) != 5:
  #  sys.exit("Usage: python FindStdDev.py [RelativeFileNames.txt] ")

	Data = numpy.zeros(shape(7,1))

	
	#read in file

	fpt_files = open(sys.argv[1])
	for filename in fpt_files:
		fpt_data = open(filename)
		for line in fpt_data:
			Data[0],Data[1],Data[2],Data[3],Data[4],Data[5] = line.split()