import tensorflow as tf
from tensorflow import keras
import JSONReader
import angleModule as am
import argparse
import matplotlib as plt
import pandas as pd

def dataframe_to_dataset(dataframe):
    dataframe = dataframe.copy()
    labels = dataframe.pop("fight")
    ds = tf.data.Dataset.from_tensor_slices((dict(dataframe), labels))
    ds = ds.shuffle(buffer_size=len(dataframe))
    return ds

def dataframe_to_evaluator(dataframe):
	dataframe = dataframe.copy()
	labels = dataframe.pop("fight")
	return dataframe, labels

ap = argparse.ArgumentParser()
ap.add_argument("-p", "--path", type=str, required=True,
	help="path to the input vector dataset")
args = vars(ap.parse_args())

file_url = args["path"]
dataframe = pd.read_csv(file_url, sep=r'\s*,\s*', header=0, encoding='ascii', engine='python')
print(dataframe.head())

test_ds =dataframe_to_dataset(dataframe)
test_ds = test_ds.map(lambda x_text, x_label: (x_text, tf.expand_dims(x_label, -1)))

model = keras.models.load_model('./model')
model.evaluate(test_ds, verbose=1)