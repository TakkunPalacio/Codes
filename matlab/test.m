%add functions p = 3sin(x^2)+2cos(y^3) and q = 3cos(xy)+2y^2 for x in the range 0 to 5 and y=0.05x+2.01 in all cases.
%Use increments of 0.01. Using subplot, plot all the three function
%together. Use the subplot command to plot all the three functions

x = 0:0.01:5;
y = 0.05*x+2.01;
p = 3*sin(x.^2)+2*cos(y.^3);
q = 3*cos(x.*y)+2*y.^2;
subplot(3,1,1)
plot(x,p)
subplot(3,1,2)
plot(x,q)
subplot(3,1,3)
plot(x,p,x,q)
