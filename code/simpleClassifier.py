import argparse
import JSONReader
import distanceModule as dm
import angleModule as am

#Method that processes all the people in an image
def processImage(parsedObject):
	print("Processing image to check whether there is a fight or not")
	print("-----------")
	counter = 0
	#First, we detect the number of people in the image
	for i in range(0,50):
		try:
			parsedObject["people"][i]
			counter += 1
		except IndexError as e:
			print(f"There are {counter} people in the image")
			break
	if(counter>1):
		for i in range(0,counter):
			processPerson(parsedObject, i, counter)
	else:
		print("As there are less than two people in the image, there is no fight")

#Method that processes one individual at once, comparing it to every person to try and detect a fight
def processPerson(parsedObject, i, total):
	print(f'Processing person number {i}')
	armAngles = am.computeArmAngles(parsedObject["people"][i]["pose_keypoints_2d"])
	legAngles = am.computeLegAngles(parsedObject["people"][i]["pose_keypoints_2d"])
	
	

# construct the argument parser and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--image", type=str, required=True,
	help="path to the input image JSON")
args = vars(ap.parse_args())

parsedObject = JSONReader.readJSONOld()
#parsedObject = JSONReader.readJSON(args["image"]
processImage(parsedObject)