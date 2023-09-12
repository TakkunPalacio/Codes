import random as ran #funny
a = ran.randint(-65536,65536)#16 bit cuz why not
c= "oh hi yo"#japanese pun

#f" " is a better formatting choice tbh
print (f"{a} is an integer")
print (f"{c} is a string")
print ("%.3f is a float" % a)
print (f"binary {format(a,'b')} is equivalent to decimal {a}")
print (f"octal {a:o} is equivalent to decimal {a}")
print (f"hexadecimal {a:x} is equivalent to decimal {a}")
