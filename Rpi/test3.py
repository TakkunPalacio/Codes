import RPi.GPIO as GPIO
import time
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
#Bcm board uses board com
#Board uses pin number
leds = [0,1,2,3,4,5,6,7,8,9] 
buttons = [10,11,12,13,18,15]

GPIO.setup(leds,GPIO.OUT)
GPIO.setup(buttons,GPIO.IN,pull_up_down=GPIO.PUD_UP)

delay = 0
state = 0
def check_button(state):
    
    button_state1 = GPIO.input(buttons[0])
    button_state2 = GPIO.input(buttons[1])
    button_state3 = GPIO.input(buttons[2])
    button_state4 = GPIO.input(buttons[3])
    button_state5 = GPIO.input(buttons[4])
    button_state6 = GPIO.input(buttons[5])
    
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
    
    print("Btn1: "+str(button_state1))
    print("Btn2: "+str(button_state2))
    print("Btn3: "+str(button_state3))
    print("Btn4: "+str(button_state4))
    print("Btn5: "+str(button_state5))
    print("Btn6: "+str(button_state6))
    print("State: "+str(state))
    return state

    
while True:
    state = check_button(state)        
    if state == 1:
        GPIO.output(leds,GPIO.HIGH)
        state = check_button(state)
        time.sleep(1)
        GPIO.output(leds,GPIO.LOW)
        state = check_button(state)
        time.sleep(1)
    elif state == 2:
        GPIO.output(leds[:5],GPIO.HIGH)
        GPIO.output(leds[5:],GPIO.LOW)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(leds[:5],GPIO.LOW)
        GPIO.output(leds[5:],GPIO.HIGH)
        state = check_button(state)
        time.sleep(0.5)
        
    elif state == 3:
        odd = [0,2,4,6,8]
        even = [1,3,5,7,9]
        GPIO.output(odd,GPIO.HIGH)
        GPIO.output(even,GPIO.LOW)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(odd,GPIO.LOW)
        GPIO.output(even,GPIO.HIGH)
        state = check_button(state)
        time.sleep(0.5)
    elif state == 4:
        state1 = [4,5]
        state2 = [3,6]
        state3 = [2,7]
        state4 = [1,8]
        state5 = [0,9]
        GPIO.output(leds,GPIO.LOW)
        GPIO.output(state1,GPIO.HIGH)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(state2,GPIO.HIGH)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(state3,GPIO.HIGH)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(state4,GPIO.HIGH)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(state5,GPIO.HIGH)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(leds,GPIO.LOW)
        state = check_button(state)
        time.sleep(0.5)
    elif state == 5:
        state5 = [4,5]
        state4 = [3,6]
        state3 = [2,7]
        state2 = [1,8]
        state1 = [0,9]
        GPIO.output(leds,GPIO.HIGH)
        GPIO.output(state5,GPIO.LOW)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(state4,GPIO.LOW)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(state3,GPIO.LOW)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(state2,GPIO.LOW)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(state1,GPIO.LOW)
        state = check_button(state)
        time.sleep(0.5)
        GPIO.output(leds,GPIO.HIGH)
        state = check_button(state)
        time.sleep(0.5)
    elif state == 6:
        delay = delay + .5
        if(delay >5):
            delay = 0.5
        state = check_button(state)
        print(delay)
        for i in range(10):
            state = check_button(state)
            if(state != 6):
                break
            if(i == 0):
                GPIO.output(leds,GPIO.LOW)
            GPIO.output(leds[i],GPIO.HIGH)
            print(delay)
            
            time.sleep(delay)
            
        
        