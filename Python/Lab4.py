y = input("Enter binary: ")  

def bin_to_dec(a):
    c=0
    for num in range(len(a)):  
       if((a[len(a)-num-1])=='1'):#flip the string 
            c = c + 2**num #2^0 2^1 2^2
    print(c)

bin_to_dec(y)
