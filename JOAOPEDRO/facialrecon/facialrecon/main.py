import cv2

webcam = cv2.VideoCapture(0)
faceCascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_default.xml')

if webcam.isOpened():
    validacao, frame = webcam.read()

    while validacao:
        validacao, frame = webcam.read()
        cv2.imshow("Webcam Video", cv2.flip(frame, 1))

        key = cv2.waitKey(5)
        if key == 27:
            break

    cv2.imwrite("FotoAleatoria.png", frame)

webcam.release()
cv2.destroyAllWindows()
