import json

jsonObjectFile = open("myJSON.json")
jsonObject = jsonObjectFile.read()
print(jsonObject)

parsedObject = json.loads(jsonObject)

print("Nariz")
print(parsedObject["people"][0]["pose_keypoints_2d"][0])
print("Pecho")
print(parsedObject["people"][0]["pose_keypoints_2d"][3])
print("Hombro derecho")
print(parsedObject["people"][0]["pose_keypoints_2d"][6])
print("Codo derecho")
print(parsedObject["people"][0]["pose_keypoints_2d"][9])
print("Mano derecha")
print(parsedObject["people"][0]["pose_keypoints_2d"][12])
print("Hombro izquierdo")
print(parsedObject["people"][0]["pose_keypoints_2d"][15])
print("Codo izquierdo")
print(parsedObject["people"][0]["pose_keypoints_2d"][18])
print("Mano izquierda")
print(parsedObject["people"][0]["pose_keypoints_2d"][21])
print("Cadera centro")
print(parsedObject["people"][0]["pose_keypoints_2d"][24])
print("Cadera derecha")
print(parsedObject["people"][0]["pose_keypoints_2d"][27])
print("Rodilla derecha")
print(parsedObject["people"][0]["pose_keypoints_2d"][30])
print("Tobillo derecho")
print(parsedObject["people"][0]["pose_keypoints_2d"][33])
print("Cadera izquiera")
print(parsedObject["people"][0]["pose_keypoints_2d"][36])
print("Rodilla izquierda")
print(parsedObject["people"][0]["pose_keypoints_2d"][39])
print("Tobillo izquierdo")
print(parsedObject["people"][0]["pose_keypoints_2d"][42])
print("Ojo derecho")
print(parsedObject["people"][0]["pose_keypoints_2d"][45])
print("Ojo izquierdo")
print(parsedObject["people"][0]["pose_keypoints_2d"][48])
print("Oreja derecha")
print(parsedObject["people"][0]["pose_keypoints_2d"][51])
print("Oreja izquierda")
print(parsedObject["people"][0]["pose_keypoints_2d"][54])
print("Dedo gordo izquierdo")
print(parsedObject["people"][0]["pose_keypoints_2d"][57])
print("Dedo pequenyo izquierda")
print(parsedObject["people"][0]["pose_keypoints_2d"][60])
print("Talon izquierdo")
print(parsedObject["people"][0]["pose_keypoints_2d"][63])
print("Dedo gordo derecho")
print(parsedObject["people"][0]["pose_keypoints_2d"][66])
print("Dedo pequenyo derecho")
print(parsedObject["people"][0]["pose_keypoints_2d"][69])
print("Talon derecho")
print(parsedObject["people"][0]["pose_keypoints_2d"][72])