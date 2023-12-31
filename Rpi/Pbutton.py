import RPi.GPIO as GPIO
import time
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
#Bcm board uses board com
#Board uses pin number
led1=0
led2=1
led3=2
led4=3
led5=4
led6=5
led7=6
led8=7
led9=8
led10=9

button1=10
button2=11
button3=12
button4=13
button5=18
button6=15 

GPIO.setup(led1,GPIO.OUT)
GPIO.setup(led2,GPIO.OUT)
GPIO.setup(led3,GPIO.OUT)
GPIO.setup(led4,GPIO.OUT)
GPIO.setup(led5,GPIO.OUT)
GPIO.setup(led6,GPIO.OUT)
GPIO.setup(led7,GPIO.OUT)
GPIO.setup(led8,GPIO.OUT)
GPIO.setup(led9,GPIO.OUT)
GPIO.setup(led10,GPIO.OUT)
GPIO.setup(button1,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(button2,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(button3,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(button4,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(button5,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(button6,GPIO.IN,pull_up_down=GPIO.PUD_UP)
delay = 1
state = 0
while True:
    button_state1 = GPIO.input(button1)
    button_state2 = GPIO.input(button2)
    button_state3 = GPIO.input(button3)
    button_state4 = GPIO.input(button4)
    button_state5 = GPIO.input(button5)
    button_state6 = GPIO.input(button6)
            
    if button_state1 == False:
        state = 1
    elif button_state2 == False:
        state = 2
    elif button_state3 == False:
        state = 3
    elif button_state4 == False:
        state = 4
    elif button_state5 == False:
        state = 5
    elif button_state6 == False:
        state = 6
    if state == 1:
        delay = 1
        GPIO.output(led1,GPIO.HIGH)
        GPIO.output(led2,GPIO.HIGH)
        GPIO.output(led3,GPIO.HIGH)
        GPIO.output(led4,GPIO.HIGH)
        GPIO.output(led5,GPIO.HIGH)
        GPIO.output(led6,GPIO.HIGH)
        GPIO.output(led7,GPIO.HIGH)
        GPIO.output(led8,GPIO.HIGH)
        GPIO.output(led9,GPIO.HIGH)
        GPIO.output(led10,GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(led1,GPIO.LOW)
        GPIO.output(led2,GPIO.LOW)
        GPIO.output(led3,GPIO.LOW)
        GPIO.output(led4,GPIO.LOW)
        GPIO.output(led5,GPIO.LOW)
        GPIO.output(led6,GPIO.LOW)
        GPIO.output(led7,GPIO.LOW)
        GPIO.output(led8,GPIO.LOW)
        GPIO.output(led9,GPIO.LOW)
        GPIO.output(led10,GPIO.LOW)
        time.sleep(delay)
    elif state == 2:
        delay = 0.5
        GPIO.output(led1,GPIO.HIGH)
        GPIO.output(led2,GPIO.HIGH)
        GPIO.output(led3,GPIO.HIGH)
        GPIO.output(led4,GPIO.HIGH)
        GPIO.output(led5,GPIO.HIGH)
        GPIO.output(led6,GPIO.LOW)
        GPIO.output(led7,GPIO.LOW)
        GPIO.output(led8,GPIO.LOW)
        GPIO.output(led9,GPIO.LOW)
        GPIO.output(led10,GPIO.LOW)
        time.sleep(delay)
        GPIO.output(led1,GPIO.LOW)
        GPIO.output(led2,GPIO.LOW)
        GPIO.output(led3,GPIO.LOW)
        GPIO.output(led4,GPIO.LOW)
        GPIO.output(led5,GPIO.LOW)
        GPIO.output(led6,GPIO.HIGH)
        GPIO.output(led7,GPIO.HIGH)
        GPIO.output(led8,GPIO.HIGH)
        GPIO.output(led9,GPIO.HIGH)
        GPIO.output(led10,GPIO.HIGH)
        time.sleep(delay)
    elif state == 3:
        delay = 0.5
        GPIO.output(led1,GPIO.LOW)
        GPIO.output(led2,GPIO.HIGH)
        GPIO.output(led3,GPIO.LOW)
        GPIO.output(led4,GPIO.HIGH)
        GPIO.output(led5,GPIO.LOW)
        GPIO.output(led6,GPIO.HIGH)
        GPIO.output(led7,GPIO.LOW)
        GPIO.output(led8,GPIO.HIGH)
        GPIO.output(led9,GPIO.LOW)
        GPIO.output(led10,GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(led1,GPIO.HIGH)
        GPIO.output(led2,GPIO.LOW)
        GPIO.output(led3,GPIO.HIGH)
        GPIO.output(led4,GPIO.LOW)
        GPIO.output(led5,GPIO.HIGH)
        GPIO.output(led6,GPIO.LOW)
        GPIO.output(led7,GPIO.HIGH)
        GPIO.output(led8,GPIO.LOW)
        GPIO.output(led9,GPIO.HIGH)
        GPIO.output(led10,GPIO.LOW)
        time.sleep(delay)
    elif state == 4:
        delay = 0.5
        GPIO.output(led1,GPIO.LOW)
        GPIO.output(led2,GPIO.LOW)
        GPIO.output(led3,GPIO.LOW)
        GPIO.output(led4,GPIO.LOW)
        GPIO.output(led5,GPIO.HIGH)
        GPIO.output(led6,GPIO.HIGH)
        GPIO.output(led7,GPIO.LOW)
        GPIO.output(led8,GPIO.LOW)
        GPIO.output(led9,GPIO.LOW)
        GPIO.output(led10,GPIO.LOW)
        time.sleep(delay)
        GPIO.output(led1,GPIO.LOW)
        GPIO.output(led2,GPIO.LOW)
        GPIO.output(led3,GPIO.LOW)
        GPIO.output(led4,GPIO.HIGH)
        GPIO.output(led5,GPIO.HIGH)
        GPIO.output(led6,GPIO.HIGH)
        GPIO.output(led7,GPIO.HIGH)
        GPIO.output(led8,GPIO.LOW)
        GPIO.output(led9,GPIO.LOW)
        GPIO.output(led10,GPIO.LOW)
        time.sleep(delay)
        GPIO.output(led1,GPIO.LOW)
        GPIO.output(led2,GPIO.LOW)
        GPIO.output(led3,GPIO.HIGH)
        GPIO.output(led4,GPIO.HIGH)
        GPIO.output(led5,GPIO.HIGH)
        GPIO.output(led6,GPIO.HIGH)
        GPIO.output(led7,GPIO.HIGH)
        GPIO.output(led8,GPIO.HIGH)
        GPIO.output(led9,GPIO.LOW)
        GPIO.output(led10,GPIO.LOW)
        time.sleep(delay)
        GPIO.output(led1,GPIO.LOW)
        GPIO.output(led2,GPIO.HIGH)
        GPIO.output(led3,GPIO.HIGH)
        GPIO.output(led4,GPIO.HIGH)
        GPIO.output(led5,GPIO.HIGH)
        GPIO.output(led6,GPIO.HIGH)
        GPIO.output(led7,GPIO.HIGH)
        GPIO.output(led8,GPIO.HIGH)
        GPIO.output(led9,GPIO.HIGH)
        GPIO.output(led10,GPIO.LOW)
        time.sleep(delay)
        GPIO.output(led1,GPIO.HIGH)
        GPIO.output(led2,GPIO.HIGH)
        GPIO.output(led3,GPIO.HIGH)
        GPIO.output(led4,GPIO.HIGH)
        GPIO.output(led5,GPIO.HIGH)
        GPIO.output(led6,GPIO.HIGH)
        GPIO.output(led7,GPIO.HIGH)
        GPIO.output(led8,GPIO.HIGH)
        GPIO.output(led9,GPIO.HIGH)
        GPIO.output(led10,GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(led1,GPIO.LOW)
        GPIO.output(led2,GPIO.LOW)
        GPIO.output(led3,GPIO.LOW)
        GPIO.output(led4,GPIO.LOW)
        GPIO.output(led5,GPIO.LOW)
        GPIO.output(led6,GPIO.LOW)
        GPIO.output(led7,GPIO.LOW)
        GPIO.output(led8,GPIO.LOW)
        GPIO.output(led9,GPIO.LOW)
        GPIO.output(led10,GPIO.LOW)
        time.sleep(delay)
    elif state == 5:
        delay = 0.5
        GPIO.output(led1,GPIO.HIGH)
        GPIO.output(led2,GPIO.HIGH)
        GPIO.output(led3,GPIO.HIGH)
        GPIO.output(led4,GPIO.HIGH)
        GPIO.output(led5,GPIO.HIGH)
        GPIO.output(led6,GPIO.HIGH)
        GPIO.output(led7,GPIO.HIGH)
        GPIO.output(led8,GPIO.HIGH)
        GPIO.output(led9,GPIO.HIGH)
        GPIO.output(led10,GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(led1,GPIO.HIGH)
        GPIO.output(led2,GPIO.HIGH)
        GPIO.output(led3,GPIO.HIGH)
        GPIO.output(led4,GPIO.HIGH)
        GPIO.output(led5,GPIO.LOW)
        GPIO.output(led6,GPIO.LOW)
        GPIO.output(led7,GPIO.HIGH)
        GPIO.output(led8,GPIO.HIGH)
        GPIO.output(led9,GPIO.HIGH)
        GPIO.output(led10,GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(led1,GPIO.HIGH)
        GPIO.output(led2,GPIO.HIGH)
        GPIO.output(led3,GPIO.HIGH)
        GPIO.output(led4,GPIO.LOW)
        GPIO.output(led5,GPIO.LOW)
        GPIO.output(led6,GPIO.LOW)
        GPIO.output(led7,GPIO.LOW)
        GPIO.output(led8,GPIO.HIGH)
        GPIO.output(led9,GPIO.HIGH)
        GPIO.output(led10,GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(led1,GPIO.HIGH)
        GPIO.output(led2,GPIO.HIGH)
        GPIO.output(led3,GPIO.LOW)
        GPIO.output(led4,GPIO.LOW)
        GPIO.output(led5,GPIO.LOW)
        GPIO.output(led6,GPIO.LOW)
        GPIO.output(led7,GPIO.LOW)
        GPIO.output(led8,GPIO.LOW)
        GPIO.output(led9,GPIO.HIGH)
        GPIO.output(led10,GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(led1,GPIO.HIGH)
        GPIO.output(led2,GPIO.LOW)
        GPIO.output(led3,GPIO.LOW)
        GPIO.output(led4,GPIO.LOW)
        GPIO.output(led5,GPIO.LOW)
        GPIO.output(led6,GPIO.LOW)
        GPIO.output(led7,GPIO.LOW)
        GPIO.output(led8,GPIO.LOW)
        GPIO.output(led9,GPIO.LOW)
        GPIO.output(led10,GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(led1,GPIO.LOW)
        GPIO.output(led2,GPIO.LOW)
        GPIO.output(led3,GPIO.LOW)
        GPIO.output(led4,GPIO.LOW)
        GPIO.output(led5,GPIO.LOW)
        GPIO.output(led6,GPIO.LOW)
        GPIO.output(led7,GPIO.LOW)
        GPIO.output(led8,GPIO.LOW)
        GPIO.output(led9,GPIO.LOW)
        GPIO.output(led10,GPIO.LOW)
        time.sleep(delay)
    
GPIO.cleanup()
