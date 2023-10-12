n = 0:12;
x1 = [0,0,0,1,1,1,1,1,1,0,0,0,0];

ax1 = subplot(2,1,1);
stem(n,x1,'r','filled');
ax2 = subplot(2,1,2);
[x2, n] = sigshift(x1,n,3);
stem(n,x2,'g','filled');

linkaxes([ax1,ax2],'x');
linkaxes([ax1,ax2],'y');

function [y,n] = sigshift(x,m,k)
    % implements y(n) = x(n-k)
    % -------------------------
    % [y,n] = sigshift(x,m,k)
    %
    n = m+k; y = x
    end