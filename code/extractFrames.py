import cv2
import os
path="./data"
contenido = os.listdir(path)
for fich in contenido:
	if(not fich.startswith(".")):
		carpetaVideo = os.listdir(path+"/"+fich)
		for fichVideo in carpetaVideo:
			name=""
			if (fichVideo.startswith("newfi")):
				name=fichVideo.replace(".avi","")
			else:
				name="nofi"+fichVideo.replace(".mpg","")
			cam=cv2.VideoCapture(path+"/"+fich+"/"+fichVideo)
			currentFrame=1
			while (True):
				ret, frame = cam.read()
				if(ret):
					finalName="./out/"+name+"_"+str(currentFrame)+".jpg"

					cv2.imwrite(finalName,frame)
					currentFrame=currentFrame+1
				else:
					break
			cam.release()
			cv2.destroyAllWindows()

