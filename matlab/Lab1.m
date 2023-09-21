%Enter input in weight in kg and height in m. Then calculate the BMI 
%BMI is equal to weight over height squared
%BMI Table
%<18.5          Underweight
%18.5 - 24.9    Normal
%25.0 - 29.9    Overweight
%>30            Obese
a = input("Enter weight in kg:");
b = input("Enter height in m:");
bmi = a/(b*b);
c = input("Recommended by Master Jedi Master Engelbert(Y/N):","s");

if(bmi<18.5)
    d = "Underweight";
end
if(bmi>18.5 && bmi<24.9)
    d = "Normal";
end
if(bmi>25.0 && bmi<29.9)
    d = "Overweight";
end
if(bmi>30)
    d= "Obese";
end

if(c =="Y" || c=="y")
fprintf("Congratulations! Here is your BMI %.1f ",bmi);
fprintf("and status: %s\n",d);
else
    fprintf("Sorry. User is rejected");
end
