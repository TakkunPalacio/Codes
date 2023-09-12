from gpiozero import LED
from time import sleep

led1 = LED(0)
led2 = LED(1)
led3 = LED(2)
led4 = LED(3)
led5 = LED(4)
led6 = LED(5)
led7 = LED(6)

x = 0.3

while True:
    led1.on()
    sleep(x)
    led1.off()
    sleep(x)
    
    led2.on()
    sleep(x)
    led2.off()
    sleep(x)
    
    led3.on()
    sleep(x)
    led3.off()
    sleep(x)
    
    led4.on()
    sleep(x)
    led4.off()
    sleep(x)
    
    led5.on()
    sleep(x)
    led5.off()
    sleep(x)
    
    led6.on()
    sleep(x)
    led6.off()
    sleep(x)
    
    led7.on()
    sleep(x)
    led7.off()
    sleep(x)
    