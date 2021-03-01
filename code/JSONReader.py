import json

class JSONReader(object):
	"""docstring for JSONReader"""
	def __init__(self, arg):
		super(JSONReader, self).__init__()
		self.arg = arg
	
def readJSONOld():
	jsonObjectFile = open("../data/1_keypoints.json")
	jsonObject = jsonObjectFile.read()
	return json.loads(jsonObject)

def readJSON(path):
	jsonObjectFile = open(path)
	jsonObject = jsonObjectFile.read()
	return json.loads(jsonObject)