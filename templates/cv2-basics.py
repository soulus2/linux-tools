import cv2
import time

cap = cv2.VideoCapture(0)
pT=0

WIDTH,HEIGHT = (1920,1080)
CAMERA_FPS = 30.0
USE_MJPG = True
SCALE = 0.5

cap.set(cv2.CAP_PROP_FPS, CAMERA_FPS) 
cap.set(cv2.CAP_PROP_FRAME_WIDTH, WIDTH)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, HEIGHT) 

if USE_MJPG:
    cap.set(cv2.CAP_PROP_FOURCC, cv2.VideoWriter.fourcc('M','J','P','G'))

while True:
    rat, frame = cap.read()
    frame = cv2.resize(frame, (int(WIDTH*SCALE), int(HEIGHT*SCALE)))
    cT = time.time()    

    fps = 1/(cT-pT)
    cv2.putText(frame, f"{int(fps)} fps", (20,25), cv2.FONT_HERSHEY_PLAIN, 2, (0,255,0),2)
    cv2.imshow("Window",frame)

    pT = cT

    if cv2.waitKey(1) & 0XFF == 27:
        break
    
    if cv2.getWindowProperty('Window',cv2.WND_PROP_VISIBLE) < 1:        
        break 

cap.release()
cv2.destroyAllWindows()

