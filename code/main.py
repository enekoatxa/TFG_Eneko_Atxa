import JSONReader
import distanceModule as dm
import angleModule as am

parsedObject = JSONReader.readJSON()

try:
	parsedObject["people"][1]
	print(dm.computeDistances(parsedObject["people"][0]["pose_keypoints_2d"], parsedObject["people"][1]["pose_keypoints_2d"]))
	print("---------------")
	print(dm.computeDistancesNorm(parsedObject["people"][0]["pose_keypoints_2d"], parsedObject["people"][1]["pose_keypoints_2d"]))
	print("---------------")
	print(am.computeAngles(parsedObject["people"][0]["pose_keypoints_2d"]))
	print("---------------")
	print(am.computeAngles(parsedObject["people"][1]["pose_keypoints_2d"]))
except IndexError as e:
	print("Se ha encontrado solo una persona")