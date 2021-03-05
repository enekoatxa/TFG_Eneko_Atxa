import tensorflow as tf
import numpy as np
import pandas as pd
from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras.layers.experimental.preprocessing import Normalization
import argparse

ap = argparse.ArgumentParser()
ap.add_argument("-p", "--path", type=str, required=True,
	help="path to the input CSV")
args = vars(ap.parse_args())
file_url = args["path"]
dataframe = pd.read_csv(file_url, sep=r'\s*,\s*', header=0, encoding='ascii', engine='python')
print(dataframe.head())

val_dataframe = dataframe.sample(frac=0.2, random_state=1337)
train_dataframe = dataframe.drop(val_dataframe.index)

print("Using %d samples for training and %d for validation" % (len(train_dataframe), len(val_dataframe)))

def dataframe_to_dataset(dataframe):
    dataframe = dataframe.copy()
    labels = dataframe.pop("fight")
    ds = tf.data.Dataset.from_tensor_slices((dict(dataframe), labels))
    ds = ds.shuffle(buffer_size=len(dataframe))
    return ds

train_ds = dataframe_to_dataset(train_dataframe)
val_ds = dataframe_to_dataset(val_dataframe)

for x, y in train_ds.take(1):
    print("Input:", x)
    print("Target:", y)

train_ds = train_ds.batch(32)
val_ds = val_ds.batch(32)

def encode_numerical_feature(feature, name, dataset):
    # Create a Normalization layer for our feature
    normalizer = Normalization()

    # Prepare a Dataset that only yields our feature
    feature_ds = dataset.map(lambda x, y: x[name])
    feature_ds = feature_ds.map(lambda x: tf.expand_dims(x, -1))

    # Learn the statistics of the data
    normalizer.adapt(feature_ds)

    # Normalize the input feature
    encoded_feature = normalizer(feature)
    return encoded_feature

ang1 = keras.Input(shape=(1,), name="ang1")
ang2 = keras.Input(shape=(1,), name="ang2")
ang3 = keras.Input(shape=(1,), name="ang3")
ang4 = keras.Input(shape=(1,), name="ang4")
ang5 = keras.Input(shape=(1,), name="ang5")
ang6 = keras.Input(shape=(1,), name="ang6")
ang7 = keras.Input(shape=(1,), name="ang7")
ang8 = keras.Input(shape=(1,), name="ang8")
ang9 = keras.Input(shape=(1,), name="ang9")
ang10 = keras.Input(shape=(1,), name="ang10")

all_inputs = [
    ang1,
    ang2,
    ang3,
    ang4,
    ang5,
    ang6,
    ang7,
    ang8,
    ang9,
    ang10,
]

# Numerical features
ang1_encoded = encode_numerical_feature(ang1, "ang1", train_ds)
ang2_encoded = encode_numerical_feature(ang2, "ang2", train_ds)
ang3_encoded = encode_numerical_feature(ang3, "ang3", train_ds)
ang4_encoded = encode_numerical_feature(ang4, "ang4", train_ds)
ang5_encoded = encode_numerical_feature(ang5, "ang5", train_ds)
ang6_encoded = encode_numerical_feature(ang6, "ang6", train_ds)
ang7_encoded = encode_numerical_feature(ang7, "ang7", train_ds)
ang8_encoded = encode_numerical_feature(ang8, "ang8", train_ds)
ang9_encoded = encode_numerical_feature(ang9, "ang9", train_ds)
ang10_encoded = encode_numerical_feature(ang10, "ang10", train_ds)


all_features = layers.concatenate(
    [
        ang1_encoded,
		ang2_encoded,
		ang3_encoded,
		ang4_encoded,
		ang5_encoded,
		ang6_encoded,
		ang7_encoded,
		ang8_encoded,
		ang9_encoded,
		ang10_encoded,
    ]
)
x = layers.Dense(32, activation="relu")(all_features)
x = layers.Dropout(0.5)(x)
output = layers.Dense(1, activation="sigmoid")(x)
model = keras.Model(all_inputs, output)
model.compile("adam", "binary_crossentropy", metrics=["accuracy"])
model.fit(train_ds, epochs=50, validation_data=val_ds)

sample = {
    "ang1": 88.8532323843883,
    "ang2": 44.93626419290025,
    "ang3": -1,
    "ang4": 90.77926747412394,
    "ang5": 64.59466201147296,
    "ang6": 20.919662948863152,
    "ang7": 89.31726819818603,
    "ang8": 174.22914165414457,
    "ang9": 94.29910770170899,
    "ang10": 174.22914165414457,
}

input_dict = {name: tf.convert_to_tensor([value]) for name, value in sample.items()}
predictions = model.predict(input_dict)

print(
    "This particular person had a %.1f percent probability "
    "of being in a fight, as evaluated by our model." % (100 * predictions[0][0],)
)