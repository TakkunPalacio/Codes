import RPi.GPIO as GPIO
import time
import random
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
#Bcm board uses board com
#Board uses pin number
leds = [0,1,2,3,4,5,6]
GPIO.setup(leds, GPIO.OUT, initial=GPIO.LOW)

while True:
    x = random.randint(100,1000)/1000
    GPIO.output(leds, 1)
    print("LED on")
    time.sleep(x)
    GPIO.output(leds,0)
    print("LED off")
    time.sleep(x)
    
GPIO.cleanup()