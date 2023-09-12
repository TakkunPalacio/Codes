#First Lesson Python 9/2/23 2pm - 5pm
a = 4
b = 3
d = {"4"+"3"}
c = a+b
print(c)
print(d)  
d = [3,4,7,66,6]
print(d)
d.sort()
print("thats life") 
print(d)
for x in range(6):
    print(c+x)

if a != 4:
    print("A is not equal to 4")
else:
    print("A is equal to 4")

ff = "chicken"
fd = "cake"
fdd = "water"

print("I like to eat "+ff+" and "+fd+".")
print("However "+fdd+" is the best drink of all"+"!\n\n\n\n")

c_j = "pirate" 
c_r = "ship"
c_s = "gold"
c_p = "parrot" 
s1 = "There once was a "+ c_j +" who loved adventure"
s2 = "The "+ c_j +" would take her "+ c_r +" to unknown places"
s3 = "She brings homes a lot of "+ c_s +""
s4 = "Then she goes home to her pet "+ c_p +" Chuckles"
s = [s1,s2,s3,s4]
#print(s1+"\n"+s2+"\n"+s3+"\n"+s4)
for x in s:
    print(x, end="")