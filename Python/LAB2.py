list1 = [-2,0]
list2 = [-1,2]
a = int(input("Add num to list 1: "))
b = int(input(f'please enter index 0 to {len(list1)}: '))
list1.insert(b,a)
print("Updated list",list1)

print("list2: ",list2)
list2.extend([7,4])
print("extended list2",list2)

list3 = list1 +list2
print("merged list: ",list3)
y=0
for x in range(len(list3)):
    if(x%2==1):
        y = y + list3[x]

print("Total",y)