
import sys
import numpy as np




if __name__ == '__main__':

	# Variables
	cut=10 # number of elements to include in a Window
	stride=1
	eventLocations10 = [11, 16, 30, 32, 37, 50, 53, 55, 63] # indexes of events
	#eventLocations10=[11, 16, 21, 26, 31, 39, 42]






	# Execute "Predictions" based on the Event Locations
	eventLocs=eventLocations10
	totalEvents=len(eventLocations10)
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

	for i in range(1,len(preds)):
		scaledRunSum+=round((preds[i])*(float(stride)/float(cut)),1)
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

		elif True: #ignore Running sum and use the start of a bite and it's expected end
			
			if expectedCount[i] < preds[i]:
				guessLocs.append(i*stride+cut-1) # location of event just came in range

				#update expected values for next locations in CUT
				for j in range(cut):
					expectedCount[i+j] += 1 









	#print(scaledRunSum)
	
	print("{:8s}{:8s}".format("Prediction","Actual"))
	for i in range(len(eventLocs)):
		print("{:5.0f}   {:5.0f}".format(guessLocs[i],eventLocs[i]))


	print(windowCursor)
	if True:
		for i in range(len(preds)):
			print("{:5.0f}  {:5.0f}".format(i,preds[i]))
	if False:
		print(preds)


	print('Program SampleAlgorithm.py Finished.')