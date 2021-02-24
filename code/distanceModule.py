import math

class distanceModule(object):
	"""docstring for distanceModule"""
	def __init__(self, arg):
		super(distanceModule, self).__init__()
		self.arg = arg

#copmutes distances from both hands to other person's face
def computeDistances(person0, person1):
	ret = []
	dist = []
	#right hand 0 to face 1 distance
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
	#left hand 0 to face 1 distance
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
	#right hand 1 to face 0 distance
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
	#left hand 1 to face 0 distance
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

#computes distances divided by a normalizer
def computeDistancesNorm(person0, person1):
	ret=computeDistances(person0, person1)
	normConstant = computeNormalizer(person0, person1)
	if normConstant!=-1:
		newList = [x / normConstant for x in ret]
		return newList
	return ret

#computes the normalizer
def computeNormalizer(person0, person1):
	#best normalizer: sum of different bones
	if person0[2]!=0 and person0[5]!=0 and person0[26]!=0:
		if person0[32]!=0 and person0[35]!=0:
			return math.sqrt(((person0[0]-person0[3])**2)+((person0[1]-person0[4])**2)) 
			+ math.sqrt(((person0[3]-person0[24])**2)+((person0[4]-person0[25])**2))
			+ math.sqrt(((person0[24]-person0[30])**2)+((person0[25]-person0[31])**2))
			+ math.sqrt(((person0[30]-person0[33])**2)+((person0[31]-person0[34])**2))
		elif person0[41]!=0 and person0[44]!=0:
			return math.sqrt(((person0[0]-person0[3])**2)+((person0[1]-person0[4])**2)) 
			+ math.sqrt(((person0[3]-person0[24])**2)+((person0[4]-person0[25])**2))
			+ math.sqrt(((person0[24]-person0[39])**2)+((person0[25]-person0[40])**2))
			+ math.sqrt(((person0[39]-person0[42])**2)+((person0[40]-person0[43])**2))
	if person1[2]!=0 and person1[5]!=0 and person1[26]!=0:
		if person1[32]!=0 and person1[35]!=0:
			return math.sqrt(((person1[0]-person1[3])**2)+((person1[1]-person1[4])**2)) 
			+ math.sqrt(((person1[3]-person1[24])**2)+((person1[4]-person1[25])**2))
			+ math.sqrt(((person1[24]-person1[30])**2)+((person1[25]-person1[31])**2))
			+ math.sqrt(((person1[30]-person1[33])**2)+((person1[31]-person1[34])**2))
		elif person1[41]!=0 and person1[44]!=0:
			return math.sqrt(((person1[0]-person1[3])**2)+((person1[1]-person1[4])**2)) 
			+ math.sqrt(((person1[3]-person1[24])**2)+((person1[4]-person1[25])**2))
			+ math.sqrt(((person1[24]-person1[39])**2)+((person1[25]-person1[40])**2))
			+ math.sqrt(((person1[39]-person1[42])**2)+((person1[40]-person1[43])**2))
	#worse normalizer: distance from head to feet
	if person0[2]!=0:
		if person0[35]!=0:
			return math.sqrt(((person0[0]-person0[33])**2)+((person0[1]-person0[34])**2))
		if person0[44]!=0:
			return math.sqrt(((person0[0]-person0[42])**2)+((person0[1]-person0[43])**2))
	if person1[2]!=0:
		if person1[35]!=0:
			return math.sqrt(((person1[0]-person1[33])**2)+((person1[1]-person1[34])**2))
		if person1[44]!=0:
			return math.sqrt(((person1[0]-person1[42])**2)+((person1[1]-person1[43])**2))
	if person0[47]!=0:
		if person0[35]!=0:
			return math.sqrt(((person0[45]-person0[33])**2)+((person0[46]-person0[34])**2))
		if person0[44]!=0:
			return math.sqrt(((person0[45]-person0[42])**2)+((person0[46]-person0[43])**2))
	if person1[47]!=0:
		if person1[35]!=0:
			return math.sqrt(((person1[45]-person1[33])**2)+((person1[46]-person1[34])**2))
		if person1[44]!=0:
			return math.sqrt(((person1[45]-person1[42])**2)+((person1[46]-person1[43])**2))
	if person0[50]!=0:
		if person0[35]!=0:
			return math.sqrt(((person0[48]-person0[33])**2)+((person0[49]-person0[34])**2))
		if person0[44]!=0:
			return math.sqrt(((person0[48]-person0[42])**2)+((person0[49]-person0[43])**2))
	if person1[50]!=0:
		if person1[35]!=0:
			return math.sqrt(((person1[48]-person1[33])**2)+((person1[49]-person1[34])**2))
		if person1[44]!=0:
			return math.sqrt(((person1[48]-person1[42])**2)+((person1[49]-person1[43])**2))
	#worst normalizer: distance from head to waist * 2
	if person0[2]!=0:
		if person0[26]!=0:
			return math.sqrt(((person0[0]-person0[24])**2)+((person0[1]-person0[25])**2)) * 2
		if person0[29]!=0:
			return math.sqrt(((person0[0]-person0[27])**2)+((person0[1]-person0[28])**2)) * 2
		if person0[38]!=0:
			return math.sqrt(((person0[0]-person0[36])**2)+((person0[1]-person0[37])**2)) * 2
	if person1[2]!=0:
		if person1[26]!=0:
			return math.sqrt(((person1[0]-person1[24])**2)+((person1[1]-person1[25])**2)) * 2
		if person1[29]!=0:
			return math.sqrt(((person1[0]-person1[27])**2)+((person1[1]-person1[28])**2)) * 2
		if person1[38]!=0:
			return math.sqrt(((person1[0]-person1[36])**2)+((person1[1]-person1[37])**2)) * 2
	if person0[47]!=0:
		if person0[26]!=0:
			return math.sqrt(((person0[45]-person0[24])**2)+((person0[46]-person0[25])**2)) * 2
		if person0[29]!=0:
			return math.sqrt(((person0[45]-person0[27])**2)+((person0[46]-person0[28])**2)) * 2
		if person0[38]!=0:
			return math.sqrt(((person0[45]-person0[36])**2)+((person0[46]-person0[37])**2)) * 2
	if person1[47]!=0:
		if person1[26]!=0:
			return math.sqrt(((person1[45]-person1[24])**2)+((person1[46]-person1[25])**2)) * 2
		if person1[29]!=0:
			return math.sqrt(((person1[45]-person1[27])**2)+((person1[46]-person1[28])**2)) * 2
		if person1[38]!=0:
			return math.sqrt(((person1[45]-person1[36])**2)+((person1[46]-person1[37])**2)) * 2
	if person0[50]!=0:
		if person0[26]!=0:
			return math.sqrt(((person0[48]-person0[24])**2)+((person0[49]-person0[25])**2)) * 2
		if person0[29]!=0:
			return math.sqrt(((person0[48]-person0[27])**2)+((person0[49]-person0[28])**2)) * 2
		if person0[38]!=0:
			return math.sqrt(((person0[48]-person0[36])**2)+((person0[49]-person0[37])**2)) * 2
	if person1[50]!=0:
		if person1[26]!=0:
			return math.sqrt(((person1[48]-person1[24])**2)+((person1[49]-person1[25])**2)) * 2
		if person1[29]!=0:
			return math.sqrt(((person1[48]-person1[27])**2)+((person1[49]-person1[28])**2)) * 2
		if person1[38]!=0:
			return math.sqrt(((person1[48]-person1[36])**2)+((person1[49]-person1[37])**2)) * 2
	return -1
		