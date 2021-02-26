import JSONReader
import distanceModule as dm
import angleModule as am

parsedObject = JSONReader.readJSON()

try:
	parsedObject["people"][1]
	print(dm.computeFaceDistances(parsedObject["people"][0]["pose_keypoints_2d"], parsedObject["people"][1]["pose_keypoints_2d"]))
	print("---------------")
	print(dm.computeBodyDistances(parsedObject["people"][0]["pose_keypoints_2d"], parsedObject["people"][1]["pose_keypoints_2d"]))
	print("---------------")
	print(dm.computeDistancesNorm(parsedObject["people"][0]["pose_keypoints_2d"], parsedObject["people"][1]["pose_keypoints_2d"]))
	print("---------------")
	print(am.computeArmAngles(parsedObject["people"][0]["pose_keypoints_2d"]))
	print("---------------")
	print(am.computeArmAngles(parsedObject["people"][1]["pose_keypoints_2d"]))
	print("---------------")
	print(am.computeLegAngles(parsedObject["people"][0]["pose_keypoints_2d"]))
	print("---------------")
	print(am.computeLegAngles(parsedObject["people"][1]["pose_keypoints_2d"]))
except IndexError as e:
	print("Se ha encontrado solo una persona")