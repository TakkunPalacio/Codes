x = [0:0.01:5];
y = 0.05*x + 2.01;
p = 3*sin(x.^2)+2*cos(y.^3);
q = 3*cos(x.*y)+2*(y.^2);

%set plot properties to red color, triangle(left),solid, markersize:5,linewidth:2

subplot(2,2,1)
plot(x,p,'<-r','MarkerSize',5,'linewidth',2)
xlabel("Time",'fontsize',10)
ylabel("Amplitude",'fontsize',10)
grid on
title("Plot P",'fontsize',16)
subplot(2,2,2)
plot(x,q,'<-b','MarkerSize',5,'linewidth',2)
xlabel("Time",'fontsize',10)
ylabel("Amplitude",'fontsize',10)
title("Plot Q",'fontsize',16)
grid on
subplot(2,2,[3:4])
plot(x,p+q,'<-y','MarkerSize',5,'linewidth',2)
xlabel("Time",'fontsize',10)
ylabel("Amplitude",'fontsize',10)
title("Plot Z",'fontsize',16)
grid on
