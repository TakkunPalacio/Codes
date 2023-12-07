clear
clf reset

Fs = 8000;
F_low = [697,770,852,941];
F_high = [1209,1336,1447,1633];
n = 0:1:(200-1);
t = n/Fs;
char = {[sin(2*pi*F_low(4)*t)+sin(2*pi*F_high(2)*t)]
        [sin(2*pi*F_low(1)*t)+sin(2*pi*F_high(1)*t)]
        [sin(2*pi*F_low(1)*t)+sin(2*pi*F_high(2)*t)]
        [sin(2*pi*F_low(1)*t)+sin(2*pi*F_high(3)*t)]
        [sin(2*pi*F_low(2)*t)+sin(2*pi*F_high(1)*t)]
        [sin(2*pi*F_low(2)*t)+sin(2*pi*F_high(2)*t)]
        [sin(2*pi*F_low(2)*t)+sin(2*pi*F_high(3)*t)]
        [sin(2*pi*F_low(3)*t)+sin(2*pi*F_high(1)*t)]
        [sin(2*pi*F_low(3)*t)+sin(2*pi*F_high(2)*t)]
        [sin(2*pi*F_low(3)*t)+sin(2*pi*F_high(3)*t)]};
 
n = {1 2 3 4 5 6 7 8 9 10};       
 for i = 1:length(n)
     TempSound = char{n{i}+1};
     sound(TempSound,Fs);
     pause(0.1);
 end
%  subplot(2,1,1);
%  plot(t,x,'b');
%  subplot(2,1,2);
%  plot(t,y,'r');

% z = x+y;
% % figure();
% % plot(n,z);
% sound(z,Fs);