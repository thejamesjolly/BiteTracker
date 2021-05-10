'''
Filename: train-model.py
Original Code: Dr. Adam Hoover (train-model-5.py)
Edited By: James Jolly
'''



# removed InputLayer and using input_shape() in first layer instead to
# 	avoid hd5 model saving/loading bug
#
# 5-fold cross validation (out of 518 files, train on 414)
# testing is done using bc.c (C verson of classifier)
#


import logging
logging.getLogger('tensorflow').disabled = True

# TensorFlow, keras, np
import tensorflow as tf
import keras
import numpy as np
import time
import sys

# import personal Functions
from generateWindows import generateWindowsFromRaw
from generateWindows import generateBatchesForTF

FLAG_BatchTraining = True #True if using batches, false if testing on a single window of data

#define constants for the data
CUT = 75 # the total length of the window
STRIDE = 15 # The data samples to move across each window when making the windows
SMOOTHING_FACTOR = 7 # the number of data points to either side to smooth the raw data
NORM_METHOD = 1 # The Normalization Function to call on the smoothed data in each window
                # 0 = No normalization, 1 = z_score norm
DATABASE_FILE_NAMES = 'RelativeCafeDataFiles.txt' #Txt file containing the relative address of all database files
WINDOWS_PER_BATCH = 20000 # the number of samples to pull from files each time 
                # Value should maintain inequality [STRIDE*WINDOWS_PER_BATCH < 4.5M * (#folds-1)/#folds]
STEPS_PER_EPOCH = round(0.8*(4500000/STRIDE)/WINDOWS_PER_BATCH) 
                # roughly 4.5M windows with stride of 1, so this value estimates
                # the number of steps per epoch to use all of the data
                # If the value is more than the data, some data will repeat each epoch
                # But this repeated section will rotate each epoch




print("python setup complete")

#Set up Generator Object
batchGen = generateBatchesForTF(CUT,STRIDE,WINDOWS_PER_BATCH,DATABASE_FILE_NAMES,SMOOTHING_FACTOR,NORM_METHOD)




start=time.time()

## import sys
## sys.exit()


model = keras.Sequential([
    keras.layers.Conv1D(input_shape=(sample_length,total_axes,),
        filters=10,kernel_size=30,strides=15,
        activation='relu'),
    keras.layers.Conv1D(filters=10,kernel_size=3,
        activation='relu'),
#    keras.layers.SimpleRNN(units=128,activation='relu'),
#    keras.layers.SimpleRNN(units=128,activation="relu",return_sequences=True),
    keras.layers.Flatten(),  # must flatten to feed dense layer
    keras.layers.Dense(1)
    ])

model.compile(optimizer='adam',
              loss='mean_squared_error',
              metrics=['mean_absolute_error'])

model.summary()


print("Training")
if (not FLAG_BatchTraining):
  data_input,classes = next(batchGen)
  metrics = model.fit(data_input, classes, epochs=100,
                      validation_split=0.2, verbose=2)
elif (FLAG_BatchTraining):
  metrics = model.fit_generator(x=batchGen, epochs=100,
                      validation_split=0.2, verbose=2,
                      steps_per_epoch=STEPS_PER_EPOCH)

end=time.time()
print("classifier training",end-start," seconds")

print("Testing")
test_loss, test_acc = model.evaluate(data_input, classes)
print('Test accuracy:', test_acc)

predictions = model.predict(data_input)
print('Actual, prediction:')
#for a in range(0,len(classes)):
for a in range(0,50):
    print(classes[a],predictions[a])


# save model
model.save(('model_'+sys.argv[1]+'.h5'))
