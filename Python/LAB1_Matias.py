
a = int(input("Enter a number: "))
b = int(input("Enter a number: "))
c = int(input("Enter a number: "))

def summing(x,y,z):
    return x+y+z

def ave_rage(x):
    return x/3

print("Total sum is: ",summing(a,b,c))
print("Average is: ",ave_rage(summing(a,b,c)))
