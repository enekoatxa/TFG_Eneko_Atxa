import numpy as np

class angleModule(object):
	"""docstring for angleModule"""
	def __init__(self, arg):
		super(angleModule, self).__init__()
		self.arg = arg

#computes the angles of a persons body and arms
def computeArmAngles(person):
	ret = []
	shoulderR=[0,0]
	shoulderL=[0,0]
	body=[0,0]
	armR=[0,0]
	armL=[0,0]
	forearmR=[0,0]
	forearmL=[0,0]

	#calculate the vectors from the points
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

	#angle between body and right shoulder
	if shoulderR!=[0,0] and body!=[0,0]:
		ret.append(angle(shoulderR, body))
	else:
		ret.append(-1)
	#angle between right shoulder and right arm
	if shoulderR!=[0,0] and armR!=[0,0]:
		ret.append(angle(shoulderR, armR))
	else:
		ret.append(-1)
	#angle between right arm and right forearm
	if armR!=[0,0] and forearmR!=[0,0]:
		ret.append(angle(armR, forearmR))
	else:
		ret.append(-1)
	#angle between body and left shoulder
	if shoulderL!=[0,0] and body!=[0,0]:
		ret.append(angle(shoulderL, body))
	else:
		ret.append(-1)
	#angle between left shoulder and left arm
	if shoulderL!=[0,0] and armL!=[0,0]:
		ret.append(angle(shoulderL, armL))
	else:
		ret.append(-1)
	#angle between left arm and left forearm
	if armL!=[0,0] and forearmL!=[0,0]:
		ret.append(angle(armL, forearmL))
	else:
		ret.append(-1)

	return ret

#computes the angles of a persons body and legs
def computeLegAngles(person):
	ret = []
	hipR=[0,0]
	hipL=[0,0]
	legR=[0,0]
	legL=[0,0]
	calfR=[0,0]
	calfL=[0,0]

	#calculate the vectors from the points
	if person[26]!=0 and person[29]!=0:
		hipR = [person[27]-person[24],person[28]-person[25]]
	if person[26]!=0 and person[38]!=0:
		hipL = [person[24]-person[36],person[25]-person[37]]
	if person[29]!=0 and person[32]!=0:
		legR = [person[27]-person[30],person[28]-person[31]]
	if person[38]!=0 and person[41]!=0:
		legL = [person[36]-person[39],person[37]-person[40]]
	if person[32]!=0 and person[35]!=0:
		calfR = [person[33]-person[30],person[34]-person[31]]
	if person[41]!=0 and person[44]!=0:
		calfL = [person[42]-person[39],person[43]-person[40]]

	#angle between right hip and right leg
	if hipR!=[0,0] and legR!=[0,0]:
		ret.append(angle(hipR, legR))
	else:
		ret.append(-1)
	#angle between left leg and left calf
	if legL!=[0,0] and calfL!=[0,0]:
		ret.append(angle(legL, calfL))
	else:
		ret.append(-1)
	#angle between left hip and left leg
	if hipL!=[0,0] and legL!=[0,0]:
		ret.append(angle(hipL, legL))
	else:
		ret.append(-1)
	#angle between left leg and left calf
	if legL!=[0,0] and calfL!=[0,0]:
		ret.append(angle(legL, calfL))
	else:
		ret.append(-1)
	return ret

#computes angle between 2 vectors, in degrees
def angle(vector_1, vector_2):
	unit_vector_1 = vector_1 / np.linalg.norm(vector_1)
	unit_vector_2 = vector_2 / np.linalg.norm(vector_2)
	dot_product = np.dot(unit_vector_1, unit_vector_2)
	angle = np.arccos(dot_product)
	return np.rad2deg(angle)		