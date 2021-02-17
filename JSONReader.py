import json
import math

def analizar(person0, person1):
	print("distancia entre cara 0 y punyo 0")
	print(math.hypot(person0["pose_keypoints_2d"][0] - person1["pose_keypoints_2d"][12],
	 person0["pose_keypoints_2d"][1] - person1["pose_keypoints_2d"][13]))
	print("distancia entre cara 0 y punyo 1")
	print(math.hypot(person0["pose_keypoints_2d"][0] - person1["pose_keypoints_2d"][21],
	 person0["pose_keypoints_2d"][1] - person1["pose_keypoints_2d"][22]))
	print("distancia entre cara 1 y punyo 2")
	print(math.hypot(person1["pose_keypoints_2d"][0] - person0["pose_keypoints_2d"][12],
	 person1["pose_keypoints_2d"][1] - person0["pose_keypoints_2d"][13]))
	print("distancia entre cara 1 y punyo 3")
	print(math.hypot(person1["pose_keypoints_2d"][0] - person0["pose_keypoints_2d"][21],
		 person1["pose_keypoints_2d"][1] - person0["pose_keypoints_2d"][22]))

def analizarMin(person0, person1):
	print("distancia entre cara 0 y punyo 0")
	print(min(math.hypot(person0["pose_keypoints_2d"][0] - person1["pose_keypoints_2d"][12],
	 person0["pose_keypoints_2d"][1] - person1["pose_keypoints_2d"][13]), 
	math.hypot(person0["pose_keypoints_2d"][45] - person1["pose_keypoints_2d"][12],
	 person0["pose_keypoints_2d"][46] - person1["pose_keypoints_2d"][13]), 
	math.hypot(person0["pose_keypoints_2d"][48] - person1["pose_keypoints_2d"][12],
	 person0["pose_keypoints_2d"][49] - person1["pose_keypoints_2d"][13]),
	math.hypot(person0["pose_keypoints_2d"][51] - person1["pose_keypoints_2d"][12],
	 person0["pose_keypoints_2d"][52] - person1["pose_keypoints_2d"][13]),
	math.hypot(person0["pose_keypoints_2d"][54] - person1["pose_keypoints_2d"][12],
	 person0["pose_keypoints_2d"][55] - person1["pose_keypoints_2d"][13])))
	
	print("distancia entre cara 0 y punyo 1")
	print(min(math.hypot(person0["pose_keypoints_2d"][0] - person1["pose_keypoints_2d"][21],
	 person0["pose_keypoints_2d"][1] - person1["pose_keypoints_2d"][22]), 
	math.hypot(person0["pose_keypoints_2d"][45] - person1["pose_keypoints_2d"][21],
	 person0["pose_keypoints_2d"][46] - person1["pose_keypoints_2d"][22]), 
	math.hypot(person0["pose_keypoints_2d"][48] - person1["pose_keypoints_2d"][21],
	 person0["pose_keypoints_2d"][49] - person1["pose_keypoints_2d"][22]),
	math.hypot(person0["pose_keypoints_2d"][51] - person1["pose_keypoints_2d"][21],
	 person0["pose_keypoints_2d"][52] - person1["pose_keypoints_2d"][22]),
	math.hypot(person0["pose_keypoints_2d"][54] - person1["pose_keypoints_2d"][21],
	 person0["pose_keypoints_2d"][55] - person1["pose_keypoints_2d"][22])))

	print("distancia entre cara 1 y punyo 2")
	print(min(math.hypot(person1["pose_keypoints_2d"][0] - person0["pose_keypoints_2d"][12],
	 person1["pose_keypoints_2d"][1] - person0["pose_keypoints_2d"][13]), 
	math.hypot(person1["pose_keypoints_2d"][45] - person0["pose_keypoints_2d"][12],
	 person1["pose_keypoints_2d"][46] - person0["pose_keypoints_2d"][13]), 
	math.hypot(person1["pose_keypoints_2d"][48] - person0["pose_keypoints_2d"][12],
	 person1["pose_keypoints_2d"][49] - person0["pose_keypoints_2d"][13]),
	math.hypot(person1["pose_keypoints_2d"][51] - person0["pose_keypoints_2d"][12],
	 person1["pose_keypoints_2d"][52] - person0["pose_keypoints_2d"][13]),
	math.hypot(person1["pose_keypoints_2d"][54] - person0["pose_keypoints_2d"][12],
	 person1["pose_keypoints_2d"][55] - person0["pose_keypoints_2d"][13])))

	print("distancia entre cara 0 y punyo 3")
	print(min(math.hypot(person1["pose_keypoints_2d"][0] - person0["pose_keypoints_2d"][21],
	 person1["pose_keypoints_2d"][1] - person0["pose_keypoints_2d"][22]), 
	math.hypot(person1["pose_keypoints_2d"][45] - person0["pose_keypoints_2d"][21],
	 person1["pose_keypoints_2d"][46] - person0["pose_keypoints_2d"][22]), 
	math.hypot(person1["pose_keypoints_2d"][48] - person0["pose_keypoints_2d"][21],
	 person1["pose_keypoints_2d"][49] - person0["pose_keypoints_2d"][22]),
	math.hypot(person1["pose_keypoints_2d"][51] - person0["pose_keypoints_2d"][21],
	 person1["pose_keypoints_2d"][52] - person0["pose_keypoints_2d"][22]),
	math.hypot(person1["pose_keypoints_2d"][54] - person0["pose_keypoints_2d"][21],
	 person1["pose_keypoints_2d"][55] - person0["pose_keypoints_2d"][22])))

jsonObjectFile = open("myJSON.json")
jsonObject = jsonObjectFile.read()
parsedObject = json.loads(jsonObject)

try:
	parsedObject["people"][1]
	analizar(parsedObject["people"][0], parsedObject["people"][1])
	print("---------------")
	analizarMin(parsedObject["people"][0], parsedObject["people"][1])
except IndexError as e:
	print("Se ha encontrado solo una persona")