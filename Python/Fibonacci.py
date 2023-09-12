def find_pytha(x):
    FN = 1
    FN1 = 1
    FN2 = 0
    if(x==1):
        print(FN2)
    elif(x==2):
        print(FN1)
    elif(x==3):
        print(FN)
#FN = FN-1 + FN -2
# 2 = 1 + 1
# 3 = 2 + 1
# 5 = 3 + 2
# 8 = 5 + 3
    else:
        for y in range(x-1): 
           FN = FN1 + FN2 
           FN1 = FN2
           FN2 = FN
           
        print(FN)
hey = int(input("Find nth: "))
for x in range(hey):
    find_pytha(x)
#0,1,1,2,3,5,8,13,21
#1,2,3,4,5,6,7,8,9 