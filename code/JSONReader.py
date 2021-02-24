import json

class JSONReader(object):
	"""docstring for JSONReader"""
	def __init__(self, arg):
		super(JSONReader, self).__init__()
		self.arg = arg
	
def readJSON():
	jsonObjectFile = open("../data/1_keypoints.json")
	jsonObject = jsonObjectFile.read()
	return json.loads(jsonObject)