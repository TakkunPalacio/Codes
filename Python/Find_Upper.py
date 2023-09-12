a = "abcdefghijklmnopqrstuvwxyz"
b = a.upper()
c = "0123456789"
d = "!@#$%^&*()_+-="
e = input("Enter a word:")
upper_count = 0
lower_count = 0
num_count = 0
special_count = 0
for x in e:
    for y in b:
        if(x == y):
            upper_count+=1
            continue
    for y in a:
        if(x == y):
            lower_count+=1
            continue
    for y in c:
        if(x == y):
            num_count+=1
            continue
    for y in d:
        if(x == y):
            special_count+=1
            continue


print(upper_count)
print(lower_count)
print(num_count)
print(special_count)