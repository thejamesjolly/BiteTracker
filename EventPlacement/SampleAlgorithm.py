import sys
import numpy as np

import random


if __name__ == '__main__':
	
	# CONSTANTS
	DEBUG_PRINT_FLAG = 0
	
	# Variables
	cut=10 # number of elements to include in a Window
	stride=1
	eventLocations10 = [11, 16, 30, 32, 37, 50, 53, 55, 63] # indexes of events
	#eventLocations10=[11, 16, 21, 26, 31, 39, 42]
	eventLocationsRnd=[]
	eventLocationsRnd.append(cut+1) # place first item outside of first window
	for i in range(1,10):
		eventLocationsRnd.append(eventLocationsRnd[i-1]+random.randint(2,cut*1.5))






	# Execute "Predictions" based on the Event Locations
	eventLocs=eventLocationsRnd

	totalEvents=len(eventLocs)
	j=0 # Prediction Index
	preds=[]
	for i in range(0,max(eventLocs)+cut+stride,stride):
		#print("i=",i)
		eventsInWindow=[]
		for k in range(totalEvents):
			if eventLocs[k] >= i+cut:
				break #stop looping if past index
			elif i <= eventLocs[k]:
				eventsInWindow.append(eventLocs[k])
		#print(eventsInWindow)
		numEvents=len(eventsInWindow)
		preds.append(numEvents)
		j+=1

	# end of for i loop


	# Begin to use predictions to output event locations
	guessLocs=[]
	scaledRunSum=0.0
	prevInt=0

	minEventsSinceTrigger=1
	maxEventsSinceTrigger=1
	maxEventsSinceZero=1
	predEventsAtLastTrigger=1 #starts at 1 since entering a non-event space will only happed after last event takes a single spot
	windowCursor=0 # floats up and back 
	expectedCount=np.zeros(len(preds))
	expectedWindow=[1]*cut
	stepScaledRunSum=0

	if DEBUG_PRINT_FLAG==1:
		print("{:6s} {:6s} {:6s} {:6s}".format("Index","Preds","WinCsr","ExpWnd"))


	for i in range(1,len(preds)):
		scaledRunSum+=(preds[i])*(float(stride)/float(cut))
		if False: #Naive Beginning of window
			if (scaledRunSum >= prevInt+0.999): # don't use "+1" due to float precision
				prevInt+=1
				guessLocs.append(i*stride)
		elif False: # Shift offset forward for every point above lowest prediciton

			if preds[i] > predEventsAtLastTrigger:
				windowCursor += preds[i]-predEventsAtLastTrigger # move cursor forward by however many additional events are in window
				print("preds[i] = ",preds[i]," and predEventLast = ",predEventsAtLastTrigger)
				print("1windowCursor now ", windowCursor," at index ",i)
			elif preds[i] != 0 and preds[i] < predEventsAtLastTrigger:
				windowCursor -= predEventsAtLastTrigger - preds[i]
				print("preds[i] = ",preds[i]," and predEventLast = ",predEventsAtLastTrigger)
				print("2windowCursor now ", windowCursor," at index ",i)
			
			if (scaledRunSum >= prevInt+0.999): # don't use "+1" due to float precision
				guessLocs.append(i*stride+windowCursor)
				prevInt+=1
				predEventsAtLastTrigger=preds[i]#ADD CODE FOR OFFSET
				

		elif False: # Shift offset forward for every point above lowest prediciton
			if (scaledRunSum >= prevInt+0.999): # don't use "+1" due to float precision
				guessLocs.append(i*stride+windowCursor)
				minEventsSinceTrigger = preds[i]
				prevInt+=1
				predEventsAtLastTrigger = preds[i] 
				windowCursor=0
				
			if preds[i] != 0 and preds[i] < minEventsSinceTrigger:
				minEventsSinceTrigger = preds[i]

			if preds[i] > minEventsSinceTrigger:
				windowCursor += preds[i]-minEventsSinceTrigger # move cursor forward by however many additional events are in window
				print("preds[i] = ",preds[i]," and minEventsSinceTrigger = ",minEventsSinceTrigger)
				print("1windowCursor now ", windowCursor," at index ",i)
			elif preds[i] != 0 and preds[i] < minEventsSinceTrigger:
				windowCursor -= minEventsSinceTrigger - preds[i]
				print("preds[i] = ",preds[i]," and minEventsSinceTrigger = ",minEventsSinceTrigger)
				print("2windowCursor now ", windowCursor," at index ",i)

		elif False: # Try Splitting the situastion where a trigger takes place perfectly on a predication
			if (scaledRunSum >= prevInt+0.999+0.1):
				minEventsSinceTrigger = preds[i]
				predEventsAtLastTrigger = preds[i] 

				
			if preds[i] != 0 and preds[i] < minEventsSinceTrigger:
				minEventsSinceTrigger = preds[i]

			if preds[i] > minEventsSinceTrigger:
				windowCursor += preds[i]-minEventsSinceTrigger # move cursor forward by however many additional events are in window
				print("preds[i] = ",preds[i]," and minEventsSinceTrigger = ",minEventsSinceTrigger)
				print("1windowCursor now ", windowCursor," at index ",i)
			elif preds[i] != 0 and preds[i] < minEventsSinceTrigger:
				windowCursor -= minEventsSinceTrigger - preds[i]
				print("preds[i] = ",preds[i]," and minEventsSinceTrigger = ",minEventsSinceTrigger)
				print("2windowCursor now ", windowCursor," at index ",i)

			if ((scaledRunSum >= prevInt+0.999) and (scaledRunSum < prevInt+0.999+0.1)):
				minEventsSinceTrigger = preds[i]
				predEventsAtLastTrigger = preds[i] 

			if (scaledRunSum >= prevInt+0.999): # don't use "+1" due to float precision
				guessLocs.append(i*stride+windowCursor)
				prevInt+=1
				windowCursor=0
				
		elif False: # Shift offset forward for every point above lowest prediciton
			
			if preds[i]==0:
				windowCursor=0
			if preds[i] != 0 and preds[i] > maxEventsSinceTrigger:
				maxEventsSinceTrigger = preds[i]

			if preds[i] > 1:
				windowCursor += preds[i]-1 # move cursor forward by however many additional events are in window
				print("preds[i] = ",preds[i])
				print("1windowCursor now ", windowCursor," at index ",i)
			elif preds[i] != 0 and preds[i] < maxEventsSinceTrigger:
				windowCursor -= maxEventsSinceTrigger - preds[i]
				print("preds[i] = ",preds[i]," and maxEventsSinceTrigger = ",maxEventsSinceTrigger)
				print("2windowCursor now ", windowCursor," at index ",i)
			
			if (scaledRunSum >= prevInt+0.999): # don't use "+1" due to float precision
				guessLocs.append(i*stride+windowCursor)
				maxEventsSinceTrigger = preds[i]
				prevInt+=1
				predEventsAtLastTrigger = preds[i]
				windowCursor=0

		elif False: 
			
			if preds[i]==0:
				windowCursor=0
				maxEventsSinceZero=1
			if preds[i] != 0 and preds[i] > maxEventsSinceZero:
				maxEventsSinceZero = preds[i]

			if preds[i] > 1:
				windowCursor += preds[i]-1 # move cursor forward by however many additional events are in window
				print("preds[i] = ",preds[i])
				print("1windowCursor now ", windowCursor," at index ",i)
			elif preds[i] != 0 and preds[i] < maxEventsSinceZero:
				windowCursor -= maxEventsSinceZero - preds[i]
				print("preds[i] = ",preds[i]," and maxEventsSinceZero = ",maxEventsSinceZero)
				print("2windowCursor now ", windowCursor," at index ",i)
			
			if (scaledRunSum >= prevInt+0.999): # don't use "+1" due to float precision
				guessLocs.append(i*stride+windowCursor)
				maxEventsSinceZero = preds[i]
				prevInt+=1
				predEventsAtLastTrigger = preds[i]

		elif False: #ignore Running sum and use the start of a bite and it's expected end
			
			if expectedCount[i] < preds[i]:
				guessLocs.append(i*stride+cut-1) # location of event just came in range

				#update expected values for next locations in CUT
				for j in range(cut):
					expectedCount[i+j] += 1

		elif True: #ignore Running sum and use the start of a bite and it's expected end

			if (scaledRunSum >= prevInt+0.999+(float(stride)/cut)): #if there is extra to reach index
				
				stepScaledRunSum = scaledRunSum-(preds[i])*(float(stride)/float(cut))
				
				numEventsForTrigger=0
				while(stepScaledRunSum < prevInt+0.999):
					stepScaledRunSum += (float(stride)/float(cut))
					numEventsForTrigger+=1

				if numEventsForTrigger != expectedWindow[0]:
					windowCursor += numEventsForTrigger-expectedWindow[0] # move cursor forward by however many additional events are in window
				#if numEventsForTrigger > expectedWindow[0]:
				#	windowCursor += numEventsForTrigger-expectedWindow[0] # move cursor forward by however many additional events are in window

				guessLocs.append(i*stride+windowCursor)
				print("SpillOver Location")
				prevInt+=1

				#if the event will contribute to expected counts, update expected
				if windowCursor != 0: 
					for j in range(windowCursor+1):
						expectedWindow[j]+=1
				windowCursor=0 #reset for next event

				if (preds[i]-numEventsForTrigger) > expectedWindow[0]: #check if remaining events are above expected
					windowCursor += preds[i]-numEventsForTrigger-expectedWindow[0] # move cursor forward by however many additional events are in window

			elif (scaledRunSum >= prevInt+0.999): #If just met index # don't use "+1" due to float precision
				
				if preds[i] > expectedWindow[0]:
					windowCursor += preds[i]-expectedWindow[0] # move cursor forward by however many additional events are in window
				
				print("Exact Location")
				guessLocs.append(i*stride+windowCursor)
				#guessLocs.append(i*stride+windowCursor+expectedWindow[0]-1)
				prevInt+=1

				#if the event will contribute to expected counts, update expected
				if windowCursor != 0: 
					for j in range(windowCursor+1):
						expectedWindow[j]+=1
				windowCursor=0 #reset for next event
			
			else:
				if preds[i] > expectedWindow[0]:
					windowCursor += preds[i]-expectedWindow[0] # move cursor forward by however many additional events are in window

			expectedWindow=expectedWindow[1:]
			expectedWindow.append(1)
			#print(expectedWindow)
			
		if DEBUG_PRINT_FLAG==1:
			print("{:5.0f}  {:5.0f}  {:5.0f}  {}".format(i,preds[i],windowCursor,expectedWindow))










	#print(scaledRunSum)
	maxDiff=0
	print("{:8s}{:8s}".format("Prediction","Actual"))
	for i in range(len(eventLocs)):
		print("{:5.0f}   {:5.0f}".format(guessLocs[i],eventLocs[i]))
		if abs(guessLocs[i]-eventLocs[i]) > maxDiff:
			maxDiff=guessLocs[i]-eventLocs[i]


	print("MaxDifference = ",maxDiff)
	
	print(sum(preds))
	if False:
		for i in range(len(preds)):
			print("{:5.0f}  {:5.0f}".format(i,preds[i]))
	if True:
		print("Preds=",preds)


	print('Program SampleAlgorithm.py Finished.')
