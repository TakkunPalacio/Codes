import time 

Led = [0,0,0,0,0,0,0,0,0,0]
prev_time = 0
while True:
    current = int(time.time() * 1000)
    if(current - prev_time) >=500:
        prev_time = current
        print (current)
