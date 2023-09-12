from gpiozero import LED
from time import sleep
import random as ran
led = [LED(0),LED(1),LED(2),LED(3),LED(4),LED(5),LED(6)]

while True:
    for y in led:
        x = ran.randint(100,1000)/1000
        print(y)
        print(x)
        y.on()
        sleep(x)
        y.off()
        sleep(x)
        
