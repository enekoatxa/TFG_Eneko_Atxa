import numpy as np

class angleModule(object):
	"""docstring for angleModule"""
	def __init__(self, arg):
		super(angleModule, self).__init__()
		self.arg = arg

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
		