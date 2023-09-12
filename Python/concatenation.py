a = "Angela Yu"
b = "Jack Bauer"

a = a.lower()
b = b.lower()

text1 = "true"
text2 = "love"

def scan_for_matching_letters(a,b):
    c = a+b
    global text1
    global text2
    first_count = 0
    second_count = 0
    for lettername in c:
        for lettermatch in text1:
            if(lettername == lettermatch):
                first_count = first_count+1
        for lettermatch in text2:
            if(lettername == lettermatch):
                second_count = second_count+1
    count = (first_count*10)+second_count
    if(count<10 or count>90):
        print(f"Your score is {count} you go together like coke and mentos.")
    elif(count>40 and count<50):
        print(f"Your score is {count}, you are alright together.")
    else:
        print(f"Your score is {count}.")

scan_for_matching_letters(a,b)

#function to split an array equally into two variables, if the array is even, place the first variable in the first array and the second variable in the second array
def split_array(array):
    if(len(array)%2==0):
        first_array = array[0:int(len(array)/2)]
        second_array = array[int(len(array)/2):len(array)]
    else:
        first_array = array[0:int(len(array)/2)+1]
        second_array = array[int(len(array)/2)+1:len(array)]
    return first_array, second_array

#hello copilot
