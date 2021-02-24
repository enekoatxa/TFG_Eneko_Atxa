import json
import math
import numpy as np

def computeDistances(person0, person1):
	ret = []
	dist = []
	if(person0[14]!=0):
		if(person1[2]!=0):
			dist.append(math.sqrt(((person0[12]-person1[0])**2)+((person0[13]-person1[1])**2)))
		if(person1[47]!=0):
			dist.append(math.sqrt(((person0[12]-person1[45])**2)+((person0[13]-person1[46])**2)))
		if(person1[50]!=0):
			dist.append(math.sqrt(((person0[12]-person1[48])**2)+((person0[13]-person1[49])**2)))
		if(person1[53]!=0):
			dist.append(math.sqrt(((person0[12]-person1[51])**2)+((person0[13]-person1[52])**2)))
		if(person1[56]!=0):
			dist.append(math.sqrt(((person0[12]-person1[54])**2)+((person0[13]-person1[55])**2)))
		ret.append(min(dist))
		dist.clear()
	else:
		ret.append(-1)
		dist.clear()
	if(person0[23]!=0):
		if(person1[2]!=0):
			dist.append(math.sqrt(((person0[21]-person1[0])**2)+((person0[22]-person1[1])**2)))
		if(person1[47]!=0):
			dist.append(math.sqrt(((person0[21]-person1[45])**2)+((person0[22]-person1[46])**2)))
		if(person1[50]!=0):
			dist.append(math.sqrt(((person0[21]-person1[48])**2)+((person0[22]-person1[49])**2)))
		if(person1[53]!=0):
			dist.append(math.sqrt(((person0[21]-person1[51])**2)+((person0[22]-person1[52])**2)))
		if(person1[56]!=0):
			dist.append(math.sqrt(((person0[21]-person1[54])**2)+((person0[22]-person1[55])**2)))
		ret.append(min(dist))
		dist.clear()
	else:
		ret.append(-1)
		dist.clear()
	if(person1[14]!=0):
		if(person0[2]!=0):
			dist.append(math.sqrt(((person1[12]-person0[0])**2)+((person1[13]-person0[1])**2)))
		if(person0[47]!=0):
			dist.append(math.sqrt(((person1[12]-person0[45])**2)+((person1[13]-person0[46])**2)))
		if(person0[50]!=0):
			dist.append(math.sqrt(((person1[12]-person0[48])**2)+((person1[13]-person0[49])**2)))
		if(person0[53]!=0):
			dist.append(math.sqrt(((person1[12]-person0[51])**2)+((person1[13]-person0[52])**2)))
		if(person0[56]!=0):
			dist.append(math.sqrt(((person1[12]-person0[54])**2)+((person1[13]-person0[55])**2)))
		ret.append(min(dist))
		dist.clear()
	else:
		ret.append(-1)
		dist.clear()
	if(person1[23]!=0):
		if(person0[2]!=0):
			dist.append(math.sqrt(((person1[21]-person0[0])**2)+((person1[22]-person0[1])**2)))
		if(person0[47]!=0):
			dist.append(math.sqrt(((person1[21]-person0[45])**2)+((person1[22]-person0[46])**2)))
		if(person0[50]!=0):
			dist.append(math.sqrt(((person1[21]-person0[48])**2)+((person1[22]-person0[49])**2)))
		if(person0[53]!=0):
			dist.append(math.sqrt(((person1[21]-person0[51])**2)+((person1[22]-person0[52])**2)))
		if(person0[56]!=0):
			dist.append(math.sqrt(((person1[21]-person0[54])**2)+((person1[22]-person0[55])**2)))
		ret.append(min(dist))
		dist.clear()
	else:
		ret.append(-1)
		dist.clear()
	return ret

def computeDistancesNorm(person0, person1):
	ret=computeDistances(person0, person1)
	normConstant = computeNormalizer(person0, person1)
	if normConstant!=-1:
		newList = [x / normConstant for x in ret]
		return newList
	return ret

def computeNormalizer(person0, person1):
	if person0[2]!=0:
		if person0[35]:
			return math.sqrt(((person0[0]-person0[33])**2)+((person0[1]-person0[34])**2))
		if person0[44]:
			return math.sqrt(((person0[0]-person0[42])**2)+((person0[1]-person0[43])**2))
	if person1[2]!=0:
		if person1[35]:
			return math.sqrt(((person1[0]-person1[33])**2)+((person1[1]-person1[34])**2))
		if person1[44]:
			return math.sqrt(((person1[0]-person1[42])**2)+((person1[1]-person1[43])**2))
	if person0[2]!=0:
		if person0[26]:
			return math.sqrt(((person0[0]-person0[24])**2)+((person0[1]-person0[25])**2)) * 2
		if person0[29]:
			return math.sqrt(((person0[0]-person0[27])**2)+((person0[1]-person0[28])**2)) * 2
		if person0[38]:
			return math.sqrt(((person0[0]-person0[36])**2)+((person0[1]-person0[37])**2)) * 2
	if person1[2]!=0:
		if person1[26]:
			return math.sqrt(((person1[0]-person1[24])**2)+((person1[1]-person1[25])**2)) * 2
		if person1[29]:
			return math.sqrt(((person1[0]-person1[27])**2)+((person1[1]-person1[28])**2)) * 2
		if person1[38]:
			return math.sqrt(((person1[0]-person1[36])**2)+((person1[1]-person1[37])**2)) * 2
	if person0[47]!=0:
		if person0[35]:
			return math.sqrt(((person0[45]-person0[33])**2)+((person0[46]-person0[34])**2))
		if person0[44]:
			return math.sqrt(((person0[45]-person0[42])**2)+((person0[46]-person0[43])**2))
	if person1[47]!=0:
		if person1[35]:
			return math.sqrt(((person1[45]-person1[33])**2)+((person1[46]-person1[34])**2))
		if person1[44]:
			return math.sqrt(((person1[45]-person1[42])**2)+((person1[46]-person1[43])**2))
	if person0[47]!=0:
		if person0[26]:
			return math.sqrt(((person0[45]-person0[24])**2)+((person0[46]-person0[25])**2)) * 2
		if person0[29]:
			return math.sqrt(((person0[45]-person0[27])**2)+((person0[46]-person0[28])**2)) * 2
		if person0[38]:
			return math.sqrt(((person0[45]-person0[36])**2)+((person0[46]-person0[37])**2)) * 2
	if person1[47]!=0:
		if person1[26]:
			return math.sqrt(((person1[45]-person1[24])**2)+((person1[46]-person1[25])**2)) * 2
		if person1[29]:
			return math.sqrt(((person1[45]-person1[27])**2)+((person1[46]-person1[28])**2)) * 2
		if person1[38]:
			return math.sqrt(((person1[45]-person1[36])**2)+((person1[46]-person1[37])**2)) * 2
	if person0[50]!=0:
		if person0[35]:
			return math.sqrt(((person0[48]-person0[33])**2)+((person0[49]-person0[34])**2))
		if person0[44]:
			return math.sqrt(((person0[48]-person0[42])**2)+((person0[49]-person0[43])**2))
	if person1[50]!=0:
		if person1[35]:
			return math.sqrt(((person1[48]-person1[33])**2)+((person1[49]-person1[34])**2))
		if person1[44]:
			return math.sqrt(((person1[48]-person1[42])**2)+((person1[49]-person1[43])**2))
	if person0[50]!=0:
		if person0[26]:
			return math.sqrt(((person0[48]-person0[24])**2)+((person0[49]-person0[25])**2)) * 2
		if person0[29]:
			return math.sqrt(((person0[48]-person0[27])**2)+((person0[49]-person0[28])**2)) * 2
		if person0[38]:
			return math.sqrt(((person0[48]-person0[36])**2)+((person0[49]-person0[37])**2)) * 2
	if person1[50]!=0:
		if person1[26]:
			return math.sqrt(((person1[48]-person1[24])**2)+((person1[49]-person1[25])**2)) * 2
		if person1[29]:
			return math.sqrt(((person1[48]-person1[27])**2)+((person1[49]-person1[28])**2)) * 2
		if person1[38]:
			return math.sqrt(((person1[48]-person1[36])**2)+((person1[49]-person1[37])**2)) * 2
	return -1

def computeAngles(person):
	ret = []
	shoulderR=[0,0]
	shoulderL=[0,0]
	body=[0,0]
	armR=[0,0]
	armL=[0,0]
	forearmR=[0,0]
	forearmL=[0,0]

	if person[5]!=0 and person[8]!=0:
		shoulderR = [person[3]-person[6],person[4]-person[7]]
	if person[5]!=0 and person[17]!=0:
		shoulderL = [person[3]-person[15],person[4]-person[16]]
	if person[5]!=0 and person[26]!=0:
		body = [person[3]-person[24],person[4]-person[25]]
	if person[8]!=0 and person[11]!=0:
		armR = [person[6]-person[9],person[7]-person[10]]
	if person[17]!=0 and person[20]!=0:
		armL = [person[15]-person[18],person[16]-person[19]]
	if person[11]!=0 and person[14]!=0:
		forearmR = [person[9]-person[12],person[10]-person[13]]
	if person[20]!=0 and person[23]!=0:
		forearmL = [person[18]-person[21],person[19]-person[22]]

	if shoulderR!=[0,0] and body!=[0,0]:
		ret.append(angle(shoulderR, body))
	else:
		ret.append(-1)

	if shoulderL!=[0,0] and body!=[0,0]:
		ret.append(angle(shoulderL, body))
	else:
		ret.append(-1)

	if shoulderR!=[0,0] and armR!=[0,0]:
		ret.append(angle(shoulderR, armR))
	else:
		ret.append(-1)

	if shoulderL!=[0,0] and armL!=[0,0]:
		ret.append(angle(shoulderL, armL))
	else:
		ret.append(-1)

	if armR!=[0,0] and forearmR!=[0,0]:
		ret.append(angle(armR, forearmR))
	else:
		ret.append(-1)

	if armL!=[0,0] and forearmL!=[0,0]:
		ret.append(angle(armL, forearmL))
	else:
		ret.append(-1)

	return ret

def angle(vector_1, vector_2):
	unit_vector_1 = vector_1 / np.linalg.norm(vector_1)
	unit_vector_2 = vector_2 / np.linalg.norm(vector_2)
	dot_product = np.dot(unit_vector_1, unit_vector_2)
	angle = np.arccos(dot_product)
	return np.rad2deg(angle)

jsonObjectFile = open("1_keypoints.json")
jsonObject = jsonObjectFile.read()
parsedObject = json.loads(jsonObject)

try:
	parsedObject["people"][1]
	print(computeDistances(parsedObject["people"][0]["pose_keypoints_2d"], parsedObject["people"][1]["pose_keypoints_2d"]))
	print("---------------")
	print(computeDistancesNorm(parsedObject["people"][0]["pose_keypoints_2d"], parsedObject["people"][1]["pose_keypoints_2d"]))
	print("---------------")
	print(computeAngles(parsedObject["people"][0]["pose_keypoints_2d"]))
	print("---------------")
	print(computeAngles(parsedObject["people"][1]["pose_keypoints_2d"]))
except IndexError as e:
	print("Se ha encontrado solo una persona")