%The continuous time signal x(t) = 5sin(pi*t) is sampled at a sampling rate of 10 samples per second. 
%Plot the continuous time signal and the discrete time signal. from t = 3 to t = 0 seconds.
t= 0:0.1:3;
x= 5*sin(pi*t);
subplot(2,2,1);
plot(t,x);
xlabel('t');
ylabel("amplitude");
title("CTS: 5sin(pi*T)");

Fs = 10
n = t*Fs
x= 5*sin(pi*n/10);
subplot(2,2,2);
stem(n,x);
xlabel('n');
ylabel("amplitude");
title("DTS: 5sin(pi*n/10)");

t = -2:0.1:2;
x = exp(-2*t);
subplot(2,2,3);
plot(t,x);
xlabel('t');
ylabel("amplitude");
title("CTS: e^(-2t)");

Fs = 10
n = t*Fs
x = exp(-2*n/10);
subplot(2,2,4);
stem(n,x);
xlabel('n');
ylabel("amplitude");
title("DTS: e^(-2n/10)");
