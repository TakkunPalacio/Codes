b = input("Enter Binary: ")
if(len(b)%3==0):
    print("Odd")
else:
    half = len(b)/2
    count_left = 0
    count_right = 0
    for x in range(len(b)):
        if(x<half):
            if(b[x]=='1'):
                count_left+=1
        else:
            if(b[x]=='1'):
                count_right+=1
    print(count_left,count_right)
    if(count_left>count_right):
        print("Left wins")
    elif(count_right>count_left):
        print("right wins")
    else:
        print("Tie")
            
