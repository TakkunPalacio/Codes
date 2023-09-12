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

interval = 1000
prev_time = 0
led_state = False
state = 0
count = 0
tr = [prev_time,led_state,count]
def check_button(state):
    button_state1 = GPIO.input(buttons[0])
    button_state2 = GPIO.input(buttons[1])
    button_state3 = GPIO.input(buttons[2])
    button_state4 = GPIO.input(buttons[3])
    button_state5 = GPIO.input(buttons[4])
    button_state6 = GPIO.input(buttons[5])
    
    if button_state1 == False:
        state = 1
        count = 0
    elif button_state2 == False:
        state = 2
        count = 0
    elif button_state3 == False:
        state = 3
        count = 0
    elif button_state4 == False:
        state = 4
        count = 0
    elif button_state5 == False:
        state = 5
        count = 0
    elif button_state6 == False:
        state = 6
        count = 0
        interval = 500
        
    
    print("Btn1: "+str(button_state1))
    print("Btn2: "+str(button_state2))
    print("Btn3: "+str(button_state3))
    print("Btn4: "+str(button_state4))
    print("Btn5: "+str(button_state5))
    print("Btn6: "+str(button_state6))
    print("State: "+str(state))
    return state

def s1(p_time,l_state):
    current_time = int(time.time()*1000)

    if(current_time - p_time )>= 500:#500
        p_time = current_time
        l_state = not l_state
        GPIO.output(leds,l_state)
    rt = [p_time,l_state,0]
    return rt
    
def s2(p_time,l_state):
    current_time = int(time.time()*1000)
    if(current_time - p_time) >= 500:
        p_time = current_time
        l_state = not l_state
        GPIO.output(leds[:5],l_state)
        GPIO.output(leds[5:],not l_state)
    rt = [p_time,l_state,0]    
    return rt

def s3(p_time,l_state):
    current_time=int(time.time()*1000)

    odd = []
    even = []
    for i in range(0,10):
        x = i%2
        if x == 0:
            even.append(i)        
        else:
            odd.append(i)
    if(current_time - p_time )>=500:
        p_time = current_time
        l_state = not l_state
        GPIO.output(odd,l_state)
        GPIO.output(even,not l_state)
    rt = [p_time,led_state,0] 
    return rt

def s4(p_time,l_state,i):
    half1 = leds[:5]
    half2 = leds[5:]
    half1.reverse()

    current_time = int(time.time()*1000)
    if(current_time - p_time)>=500:
        p_time = current_time
        if(i >4):
            GPIO.output(leds,GPIO.LOW)
            rt = [p_time,l_state]
            return rt
        
        GPIO.output(half1[i],GPIO.HIGH)
        GPIO.output(half2[i],GPIO.HIGH)
        i = i+1

    rt = [p_time,l_state,i]
    return rt

def s5(p_time,l_state,i):
    half1 = leds[:5]
    half2 = leds[5:]
    half1.reverse()
    current_time = int(time.time()*1000)
    if(current_time - p_time)>=500:
        p_time = current_time
        if(i == 5):
            GPIO.output(leds,GPIO.HIGH)
            i=0
            rt = [p_time,l_state,i] 
            return rt
        GPIO.output(half1[i],GPIO.LOW)
        GPIO.output(half2[i],GPIO.LOW)
        i = i+1
    rt = [p_time,l_state,i]
    return rt

def s6(p_time,l_state,i):
    globals(interval)
    current_time = int(time.time()*1000)
    if(current_time - p_time)>= interval:
        if(i > 9):
            GPIO.output(leds,GPIO.LOW)
            i = 0
        GPIO.output(i,GPIO.HIGH)
        i = i +1
        interval = interval + 500
    rt = [p_time,l_state,i]
    return rt

    
while True:
    current_time = int(time.time()*1000)
    
    state = check_button(state)        
    if state == 1:
        tr = s1(prev_time,led_state)
        prev_time = tr[0]
        led_state = tr[1]
        count = tr[3]
    elif state == 2:
        tr = s2(prev_time,led_state)
        prev_time = tr[0]
        led_state = tr[1]
        count = tr[3]
    elif state == 3:
        tr = s3(prev_time,led_state)
        prev_time = tr[0]
        led_state = tr[1]
        count = tr[3]  
    elif state == 4:
        tr = s4(prev_time,led_state)
        prev_time = tr[0]
        led_state = tr[1]
        count = tr[3]
    elif state == 5:
        tr = s5(prev_time,led_state)
        prev_time = tr[0]
        led_state = tr[1]
        count = tr[3]
    elif state == 6:
        tr = s6(prev_time,led_state)
        prev_time = tr[0]
        led_state = tr[1]
        count = tr[3]
GPIO.cleanup()        
        

