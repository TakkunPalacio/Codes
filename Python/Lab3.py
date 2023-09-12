a=float(input("Enter a: "))
b=float(input("Enter b: "))
c=float(input("Enter c: "))
if(a == 0):
    print("not a quadratic equation")
elif(b**2-(4*a*c)<0):
    print("No real roots")
else:
    d = ((-1*b)+((b**2-(4*a*c))**0.5))/(2*a)
    e = ((-1*b)-((b**2-(4*a*c))**0.5))/(2*a)
    print("Root 1: %.3f" % d)
    print("Root 2: %.3f" % e)
