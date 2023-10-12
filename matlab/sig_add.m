% FILEPATH: /C:/Users/John Isa/Documents/Codes/matlab/sig_add.m
n1 = -5:5;
x1 = [2,3,2,1,1,0,1,1,2,3,2];
n2 = -5:5;
x2 = [2,2,2,2,2,2,2,2,2,2,2];

% Plot x1
subplot(3,1,1)
stem(n1,x1);
set(get(gca, 'XLabel'), 'String', 'n');
set(get(gca, 'YLabel'), 'String', 'y[n]');
set(get(gca, 'Title'), 'String', 'x1');
ylim([0 5]); % set y-axis limits

% Plot x2
subplot(3,1,2)
stem(n2,x2,'g');
set(get(gca, 'XLabel'), 'String', 'n');
set(get(gca, 'YLabel'), 'String', 'y[n]');
set(get(gca, 'Title'), 'String', 'x2');
ylim([0 5]); % set y-axis limits

% Plot x1+x2
subplot(3,1,3)
[x, n] = sigadd(x1, n1, x2, n2);
stem(n, x,'r');
set(get(gca, 'XLabel'), 'String', 'n');
set(get(gca, 'YLabel'), 'String', 'y[n]');
set(get(gca, 'Title'), 'String', 'x1+x2');
ylim([0 5]); % set y-axis limits

function [y,n] = sigadd(x1,n1,x2,n2)
    % implements y(n) = x1(n)+x2(n)
    % -----------------------------
    % [y,n] = sigadd(x1,n1,x2,n2)
    %   y = sum sequence over n, which includes n1 and n2
    %  x1 = first sequence over n1
    %  x2 = second sequence over n2 (n2 can be different from n1)
    %
    n = min(min(n1),min(n2)):max(max(n1),max(n2));  % duration of y(n)
    y1 = zeros(1,length(n)); y2 = y1;
    y1(find((n>=min(n1))&(n<=max(n1))==1))=x1;
    y2(find((n>=min(n2))&(n<=max(n2))==1))=x2;
    y = y1+y2;
    % initialization
    % x1 with duration of y
    % x2 with duration of y
    % sequence additionend
end
