import RPi.GPIO as GPIO
from time import sleep

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
#Bcm board uses board com
#Board uses pin number
GPIO.setup(14, GPIO.OUT, initial=GPIO.LOW)
GPIO.setup(2, GPIO.OUT, initial=GPIO.LOW)
x=1

while True:
    GPIO.output(14, 1)
    GPIO.output(2, 0)
    print("LED on")
    sleep(x)
    GPIO.output(14,0)
    GPIO.output(2,1)
    
    print("LED off")
    sleep(x)
    x = x - 0.5
    print(x)
    