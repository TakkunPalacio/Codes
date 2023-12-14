%ask for high and low frequency values

again = 'y';
%dtmf tablfe
dtmf = [697 770 852 941; 1209 1336 1477 1633];

Fs = 8000; %sampling frequency
n = 0:1:(200-1);
t = n/Fs;


%if the input is a number within athe dtmf table
%plot the dtmf signal
while again == 'y'
f1 = input("Enter the low frequency value: ");
f2 = input("Enter the high frequency value: ");
test = ismember(f1, dtmf);
test2 = ismember(f2, dtmf);
if test == 1 && test2 == 1
    %generate the dtmf signal
    x = cos(2*pi*f1*t) + cos(2*pi*f2*t);
    sound(x,Fs)
    %print what key the user has entered based on inputted frequency
    if f1 == 697 && f2 == 1209
        disp('You have entered the number 1')
    elseif f1 == 697 && f2 == 1336
        disp('You have entered the number 2')
    elseif f1 == 697 && f2 == 1477
        disp('You have entered the number 3')
    elseif f1 == 697 && f2 == 1633
        disp('You have entered the letter A')
    elseif f1 == 770 && f2 == 1209
        disp('You have entered the number 4')
    elseif f1 == 770 && f2 == 1336
        disp('You have entered the number 5')
    elseif f1 == 770 && f2 == 1477
        disp('You have entered the number 6')
    elseif f1 == 770 && f2 == 1633
        disp('You have entered the letter B')
    elseif f1 == 852 && f2 == 1209
        disp('You have entered the number 7')
    elseif f1 == 852 && f2 == 1336
        disp('You have entered the number 8')
    elseif f1 == 852 && f2 == 1477
        disp('You have entered the number 9')
    elseif f1 == 852 && f2 == 1633
        disp('You have entered the letter C')
    elseif f1 == 941 && f2 == 1209
        disp('You have entered the letter *')
    elseif f1 == 941 && f2 == 1336
        disp('You have entered the number 0')
    elseif f1 == 941 && f2 == 1477
        disp('You have entered the letter #')
    elseif f1 == 941 && f2 == 1633
        disp('You have entered the letter D')
    end
    %plot the dtmf signal
    figure(1)
    plot(t,x,'r^-','MarkerSize',5,'LineWidth',2)
    grid on
    title('DTMF Signal','FontSize',16)
    xlabel('Time (s)','FontSize',10)
    ylabel('Amplitude','FontSize',10)
    grid on
    %play the dtmf signal
    
else
    disp('Error: Invalid Input')
end


again = input("Do you want to input again? (y/n): ", 's');
end