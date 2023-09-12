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
state = 1
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

def s1(state):
    GPIO.output(leds,GPIO.HIGH)
    state = check_button(state)
    time.sleep(1)
    GPIO.output(leds,GPIO.LOW)
    state = check_button(state)
    time.sleep(1)
    return state
    
def s2(state):
    GPIO.output(leds[:5],GPIO.HIGH)
    GPIO.output(leds[5:],GPIO.LOW)
    state = check_button(state)
    time.sleep(0.5)
    GPIO.output(leds[:5],GPIO.LOW)
    GPIO.output(leds[5:],GPIO.HIGH)
    state = check_button(state)
    time.sleep(0.5)
    return state
def s3(state):
    odd = []
    even = []
    for i in range(0,10):
        x = i%2
        if x == 0:
            even.append(i)        
        else:
            odd.append(i)
    GPIO.output(odd,GPIO.HIGH)
    GPIO.output(even,GPIO.LOW)
    state = check_button(state)
    time.sleep(0.5)
    GPIO.output(odd,GPIO.LOW)
    GPIO.output(even,GPIO.HIGH)
    state = check_button(state)
    time.sleep(0.5)
    return state
def s4(state):
    GPIO.output(leds,GPIO.LOW)
    half1 = leds[:5]
    half2 = leds[5:]
    half1.reverse()
    for i in range(5):
        GPIO.output(half1[i],GPIO.HIGH)
        GPIO.output(half2[i],GPIO.HIGH)
        time.sleep(0.5)
    state = check_button(state)
    GPIO.output(leds,GPIO.LOW)
    time.sleep(0.5)
    return state
def s5(state):
    GPIO.output(leds,GPIO.HIGH)
    half1 = leds[:5]
    half2 = leds[5:]
    half1.reverse()
    for i in range(5):
        GPIO.output(half1[i],GPIO.LOW)
        GPIO.output(half2[i],GPIO.LOW)
        time.sleep(0.5)
    state = check_button(state)
    GPIO.output(leds,GPIO.HIGH)
    time.sleep(0.5)
    return state
def s6(state,delay):
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
    return [state,delay]
while True:
    state = check_button(state)        
    if state == 1:
        state = s1(state)
    elif state == 2:
        state = s2(state)
    elif state == 3:
        state = s3(state)  
    elif state == 4:
        state = s4(state)
    elif state == 5:
        state = s5(state)
    elif state == 6:
        delay = delay + 0.5
        if(delay > 5):
            delay = 0.5
        temp = s6(state,delay)
GPIO.cleanup()        
        
