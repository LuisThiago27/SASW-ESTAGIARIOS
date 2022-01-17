import cv2
import mediapipe as mp

webcam = cv2.VideoCapture(0)
soluDetecRosto = mp.solutions.face_detection
detector = soluDetecRosto.FaceDetection()
enquadro = mp.solutions.drawing_utils

#reconhecedor = cv2.face.LBPHFaceRecognizer_create()
#reconhecedor.read('classificadorTreinado.yml')

while True:
    verificador, frame = webcam.read()
    if verificador == False:
        break

    lista_rostos = detector.process(frame)
    if lista_rostos.detections:
        for rosto in lista_rostos.detections:
            enquadro.draw_detection(frame, rosto)

    cv2.imshow("Detector", cv2.flip(frame, 1))

    if cv2.waitKey(5) == 27:
        break

webcam.release()
cv2.destroyAllWindows()
