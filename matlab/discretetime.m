%create a discrete time signal with this x[n] = [0,-2,-1,0,->1,1,1,1,0,0]
n = [-4:1:4];
x = [0,-2,-1,0,1,1,1,1,0];
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
stem(n+3,x)
title('x[n-3]')
grid on
xlabel('n')
ylabel('y')
%show x[3-n]

ax3 = subplot(plotx,1,3)
stem(-n-3,x)
title('x[3-n]')
grid on
xlabel('n')
ylabel('y')


n3 = min([n -n-3]):max([n -n-3]);
q = [0 0 0 x]
x = flip(x,2)
r = [x 0 0 0]
q
r
ax4 = subplot(plotx,1,4)
stem(n3,q.*r)
grid on
xlabel("x")
ylabel('y')
title('x[n] u x[3-n]')

linkaxes([ax1,ax2,ax3,ax4],'x');

n = [-4:1:4];
x = [0,-2,-1,0,1,1,1,1,0];
figure()    
ax5 = subplot(3,1,1)
stem(n,x)
title('x[n]')
grid on
xlabel('n')
ylabel('y')

ax6 = subplot(3,1,2)
stem(n+2,x)
title('x[n-2]')
grid on
xlabel('n')
ylabel('y')

ax7 = subplot(3,1,3)
stem(n+2, x.*x)
title('x[n-2] * [n-2]')
grid on
xlabel('n')
ylabel('y')

linkaxes([ax5,ax6,ax7],'x');
