import argparse
import JSONReader
import os
import angleModule as am

#Method that processes all the people in an image
def processImage(parsedObject, fight):
	print("Processing image to create vectors from JSONs")
	print("-----------")
	allVectors = []
	counter = 0
	#First, we detect the number of people in the image
	for i in range(0,50):
		try:
			parsedObject["people"][i]
			counter += 1
		except IndexError as e:
			print(f"There are {counter} people in the image")
			break
	if(counter>0):
		for i in range(0,counter):
			allVectors.append(processPerson(parsedObject, i, fight))
	else:
		print("There are not any people in the image. Stopping process.")
	return str(allVectors)

#Method that processes one individual at once
def processPerson(parsedObject, i, fight):
	print(f'Processing person number {i}')
	armAngles = am.computeArmAngles(parsedObject["people"][i]["pose_keypoints_2d"])
	legAngles = am.computeLegAngles(parsedObject["people"][i]["pose_keypoints_2d"])
	return armAngles + legAngles + fight
	

# construct the argument parser and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-iF", "--imagefight", type=str, required=True,
	help="path to the input image folder with fights")
ap.add_argument("-iNF", "--imagenofight", type=str, required=True,
	help="path to the input image folder with no fights")
args = vars(ap.parse_args())

#read the fight JSONs path
filesFight = os.listdir(args["imagefight"])
#create a folder to place results if not exists
if not (os.path.isdir(args["imagefight"]+"/fightVectors")):
	os.mkdir(args["imagefight"]+"/fightVectors")
#for each JSON, compute the result vector and write it in the results vectors folder
if(len(filesFight)>0):
	for i in range(0,len(filesFight)):
		if (".json" in args["imagefight"]+"/"+filesFight[i]):
			parsedObject = JSONReader.readJSON(args["imagefight"]+"/"+filesFight[i])
			f = open(args["imagefight"]+"/fightVectors/"+filesFight[i][0:len(filesFight[i])-5:]+"vec.txt", "w")
			f.write(processImage(parsedObject, [1]))
			f.close()

#same thing but with no fight images
filesNoFight = os.listdir(args["imagenofight"])
if not (os.path.isdir(args["imagenofight"]+"/nofightVectors")):
	os.mkdir(args["imagenofight"]+"/nofightVectors")
if(len(filesNoFight)>0):
	for i in range(0,len(filesNoFight)):
		if (".json" in args["imagenofight"]+"/"+filesNoFight[i]):
			parsedObject = JSONReader.readJSON(args["imagenofight"]+"/"+filesNoFight[i])
			f = open(args["imagenofight"]+"/nofightVectors/"+filesNoFight[i][0:len(filesNoFight[i])-5:]+"vec.txt", "w")
			f.write(processImage(parsedObject, [0]))
			f.close()