import argparse, wget, os, dlib
from pytube import YouTube
import numpy as np
import cv2
import face_recognition
import pickle
import mediapipe as mp

shape_predictor_url = 'http://dlib.net/files/shape_predictor_68_face_landmarks.dat.bz2'
shape_predictor_filename = 'shape_predictor_68_face_landmarks.dat'

def rect_to_bb(rect):
    # take a bounding predicted by dlib and convert it
    # to the format (x, y, w, h) as we would normally do
    # with OpenCV
    x = rect.left()
    y = rect.top()
    w = rect.right() - x
    h = rect.bottom() - y
    # return a tuple of (x, y, w, h)
    return (x, y, w, h)

def start():
    if(os.path.exists(shape_predictor_filename) == False):
        filename = wget.download(shape_predictor_url)

    if(os.path.exists("data.mp4")):
        os.remove("data.mp4")

    yt = YouTube(args.youtube_url)
    video_filename = yt.streams.filter(file_extension='mp4').get_highest_resolution().download()
    os.rename(video_filename, "data.mp4")

    if(os.path.exists(args.folder) == False):
        os.mkdir(args.folder)

def saveFacesInFolder():
    videoCapture = cv2.VideoCapture('data.mp4')
    solucaodetec = mp.solutions.face_detection
    detector = solucaodetec.FaceDetection()
    enquadro = mp.solutions.drawing_utils
    #predictor = dlib.shape_predictor(shape_predictor_filename)

    counterImg = 0
    knownEncodings = []
    knownNames = []

    while(True):
        frame = videoCapture.read()
        if frame == None or counterImg > 100:
            break

        dets = detector.process(cv2.cvtColor(frame, cv2.COLOR_BGR2RGB))
        if dets.detections:
            for face in dets.detections:
                enquadro.draw_detection(frame, face)
        else:
            print("Nenhum rosto detectado")
            continue

        #dets = detector.process(frame)
        #if (len(dets) == 0):
            #print("Nenhum rosto detectado")
            #continue

        #for face, rect in enumerate(dets):
            #formato = predictor(frame, rect)
            #(x, y, w, h) = rect_to_bb(rect)
            #cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 255, 0), 2)

        print(args.folder + str(counterImg) + ".jpg")
        cv2.imwrite(args.folder + str(counterImg) + ".jpg", frame)

        #rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        #boxes = face_recognition.face_locations(rgb, model = 'cnn') #pode trocar por cnn
        #encodings = face_recognition.face_encodings(rgb, face)

        #for encoding in encodings:
            #knownEncodings.append(encoding)
            #knownNames.append(args.name)

        #counterImg += 1

    #data = {"encodings": knownEncodings, "names": knownNames}
    #f = open(args.name + ".encodings", "wb")
    #f.write(pickle.dumps(data))
    #f.close()

    videoCapture.release()

parser = argparse.ArgumentParser(description='Create a face dataset from youtube video.')
parser.add_argument('youtube_url', help='youtube url')
parser.add_argument('folder', help='dataset folder')
parser.add_argument('name', help='person name')
args = parser.parse_args()

start()
saveFacesInFolder()
