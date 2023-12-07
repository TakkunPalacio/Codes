Fs = 8000;
Freq = [262,294,330,349.7,392.6,440.6,494.5,524];
Amp = ones(1,8);
Phase = zeros(1,8);
t = [0:7999]'/8000;
OctaveSig = (ones(length(t),1)*Amp.*sin(2*pi*t*Freq+ones(length(t),1)*Phase));

for i = 1:length(Freq)
    TempSound = OctaveSig(:,i);
    sound(TempSound,Fs);
    pause(1.5);
    plot(TempSound);
end
 
%TempSound = sum(OctaveSig,2);
%sound(TempSound,Fs);
%plot(t,TempSound)