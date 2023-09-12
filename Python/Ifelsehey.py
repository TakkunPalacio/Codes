
#b = input("Enter a letter: ")
#v = ["a","e","i","o","u"]
#if(b in v):
#    print("%s is a vowel" % b)
#else:
#    print("%s is a consonant" % b)
    #%d, int
    #%f, float
    #%b, binary
    #%o, octal
    #%x, hex
    #%s, string
    #%e, float by exponent
a = int(input("Enter a number: "))
b = int(input("Enter a number: "))
c = int(input("Enter a number: "))

if (c>b>a):
    print("Increasing Order")
elif(a>b>c):
    print("Decreasing Order")
else:
    print("Neither")

