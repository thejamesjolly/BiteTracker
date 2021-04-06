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



#define constants for the data
CUT = 75 # the total length of the window
STRIDE = 15 # The data samples to move across each window when making the windows
SMOOTHING_FACTOR = 7 # the number of data points to either side to smooth the raw data
WINDOWS_PER_BATCH = 500000 # the number of samples to pull from files
NORM_METHOD = 1 # The Normalization Function to call on the smoothed data in each window
DATABASE_FILE_NAMES = 'RelativeCafeDataFiles.txt' #Txt file containing the relative address of all database files


#Set up Generator Object
myGen = generateWindowsFromRaw(CUT,STRIDE,WINDOWS_PER_BATCH,DATABASE_FILE_NAMES,SMOOTHING_FACTOR,NORM_METHOD)





print("python setup complete")



#Collect Data from Generator
[classes,data] = next(myGen)

# Define Variables 
total_axes=6
sample_length = CUT
num_samples=WINDOWS_PER_BATCH

classes=np.array(classes)
data=np.array(data)

print("data has shape", data.shape)
print("classes has shape ", classes.shape)



# reshape data to flatten it to one row per recording
data_flat=data.reshape(len(classes),len(data[0])*total_axes)


print("data numpy reshaped")



print("data_flat has shape ", data_flat.shape)
np.set_printoptions(threshold=np.inf)
## print(data_flat[0])

data_input=np.zeros((len(data_flat),sample_length,total_axes))
for a in range(0,num_samples):
  for b in range(0,sample_length):
    for c in range(0,total_axes):
      data_input[a][b][c]=data_flat[a][c*sample_length+b]

print("data_input has shape ",data_input.shape)
np.set_printoptions(threshold=np.inf)
## print(data_input[0])


print("data manually reshaped")

start=time.ti

label_weights=[5.61, 1.81, 1.54, 2.65, 6.7, 18.0, 44.1]

## import sys
## sys.exit()


sess=tf.Session()
with sess:
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
  metrics = model.fit(data_input, classes, epochs=100,
	class_weight=label_weights,
	validation_split=0.2, verbose=2)

  end=time.time()
  print("classifier training",end-start," seconds")

  print("Testing")
  test_loss, test_acc = model.evaluate(data_input, classes)
  print('Test accuracy:', test_acc)

  predictions = model.predict(data_input)
  print('Actual, prediction:')
  for a in range(0,len(classes)):
    print(classes[a],predictions[a])


##############################################################
# BELOW CODE TAKEN FROM WEB.  See: https://www.dlology.com/blog/how-to-convert-trained-keras-model-to-tensorflow-and-make-prediction/
##############################################################
  def freeze_session(session, keep_var_names=None, output_names=None, clear_devices=True):
    """
    Freezes the state of a session into a pruned computation graph.
    Creates a new computation graph where variable nodes are replaced by
    constants taking their current value in the session. The new graph will be
    pruned so subgraphs that are not necessary to compute the requested
    outputs are removed.
    @param session The TensorFlow session to be frozen.
    @param keep_var_names A list of variable names that should not be frozen,
                          or None to freeze all the variables in the graph.
    @param output_names Names of the relevant graph outputs.
    @param clear_devices Remove the device directives from the graph for better portability.
    @return The frozen graph definition.
    """
    graph = session.graph
    with graph.as_default():
        freeze_var_names = list(set(v.op.name for v in tf.global_variables()).difference(keep_var_names or []))
        output_names = output_names or []
        output_names += [v.op.name for v in tf.global_variables()]
        input_graph_def = graph.as_graph_def()
        if clear_devices:
            for node in input_graph_def.node:
                node.device = ""
        frozen_graph = tf.graph_util.convert_variables_to_constants(
            session, input_graph_def, output_names, freeze_var_names)
        return frozen_graph

#############################################
# The following lines create the frozen model and save it to a file
#############################################

  frozen_graph=freeze_session(sess,
                        output_names=[out.op.name for out in model.outputs])
  filename='model-5b-fold'+sys.argv[1]+'.pb'
  tf.train.write_graph(frozen_graph,"./",filename,as_text=False)

# these are needed in the C program to identify input and output layers
  print('model inputs: ',model.inputs)
  print('model outputs: ',model.outputs)

# save an H5 version, can use it to cross-compare C program classifications
  filename='model-5b-fold'+sys.argv[1]+'.hd5'
  tf.keras.models.save_model(model,filename,True,True)


