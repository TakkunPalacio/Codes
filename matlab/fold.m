n = 0:12;
x1 = [0,0,0,1,1,1,1,1,1,0,0,0,0];

ax1 = subplot(2,1,1);
stem(n,x1,'r','filled');
ax2 = subplot(2,1,2);
[x2, n] = sigfold(x1,n);
stem(n,x2,'g','filled');

linkaxes([ax1,ax2],'x');
linkaxes([ax1,ax2],'y');


function [y,n] = sigfold(x,n)
    % implements y(n) = x(-n)
    % -----------------------
    % [y,n] = sigfold(x,n)
    %
    y = fliplr(x); n = -fliplr(n);
    end
