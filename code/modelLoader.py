import tensorflow as tf
from tensorflow import keras
import JSONReader
import angleModule as am
import argparse

def processPerson(parsedObject, i):
	print(f'Processing person number {i}')
	armAngles = am.computeArmAngles(parsedObject["people"][i]["pose_keypoints_2d"])
	legAngles = am.computeLegAngles(parsedObject["people"][i]["pose_keypoints_2d"])
	sample = createSample(armAngles + legAngles)
	input_dict = {name: tf.convert_to_tensor([value]) for name, value in sample.items()}
	predictions = model.predict(input_dict)

	print("This particular person had a %.1f percent probability "
	    "of being in a fight, as evaluated by our model." % (100 * predictions[0][0],))

def createSample(sample):
	completeSample = {
    "ang1": sample[0],
    "ang2": sample[1],
    "ang3": sample[2],
    "ang4": sample[3],
    "ang5": sample[4],
    "ang6": sample[5],
    "ang7": sample[6],
    "ang8": sample[7],
    "ang9": sample[8],
    "ang10": sample[9],
}
	return completeSample

ap = argparse.ArgumentParser()
ap.add_argument("-p", "--path", type=str, required=True,
	help="path to the input image JSON")
args = vars(ap.parse_args())

model = keras.models.load_model('./model')
parsedObject = JSONReader.readJSON(args["path"])

counter = 0
for i in range(0,50):
		try:
			parsedObject["people"][i]
			counter += 1
		except IndexError as e:
			print(f"There are {counter} people in the image")
			break
if(counter>0):
	for i in range(0,counter):
		processPerson(parsedObject, i)
else:
	print("There are not any people in the image. Stopping process.")

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