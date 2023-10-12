n = [-4:1:4]
x = [0,-2,-1,0,1,1,1,1,0]
plotx = 4
%show x[n]
ax1 = subplot(plotx,1,1)
stem(n,x)
title('x[n]')
grid on
xlabel('n')
ylabel('y')
%show x[n-3]
ax2 = subplot(plotx,1,2)
stem(n-3,x)
title('x[n-3]')
grid on
xlabel('n')
ylabel('y')

linkaxes([ax1,ax2],'x');