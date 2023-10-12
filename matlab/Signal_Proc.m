% n =[-3:4];
% x = [2,1,-1,0,1,4,3,7];
% a = stem(n,x,'r','filled');
% set(a,'markersize',4)
% set(get(gca, 'XLabel'), 'String', 'n');
% set(get(gca, 'YLabel'), 'String', 'y[n]');
% set(get(gca, 'Title'), 'String', 'DTS');
subplot(3,1,1);
n = [-5:5];
x = stepseq(0,-5,5);
stem(n,x);
set(get(gca, 'XLabel'), 'String', 'n');
set(get(gca, 'YLabel'), 'String', 'y[n]');
set(get(gca, 'Title'), 'String', 'Unit Step Sequence');

subplot(3,1,2);
n = [-5:5];
x = stepseq(3,-5,5);
stem(n,x);
set(get(gca, 'XLabel'), 'String', 'n');
set(get(gca, 'YLabel'), 'String', 'y[n]');
set(get(gca, 'Title'), 'String', 'Unit Step Sequence');

subplot(3,1,3);
n = [-5:5];
x = stepseq(0,-5,5);
stem(n+5,x);
set(get(gca, 'XLabel'), 'String', 'n');
set(get(gca, 'YLabel'), 'String', 'y[n]');
set(get(gca, 'Title'), 'String', 'Unit Step Sequence (Shifted by 5)');

function [y,n] = sigfold(x,n)
    % implements y(n) = x(-n)
    % -----------------------
    % [y,n] = sigfold(x,n)
    %
    y = fliplr(x); n = -fliplr(n);
    end
    
function [y,n] = sigshift(x,m,k)
    % implements y(n) = x(n-k)
    % -------------------------
    % [y,n] = sigshift(x,m,k)
    %
    n = m+k; y = x
    end
    
    function [y,n] = sigmult(x1,n1,x2,n2)
    % implements y(n) = x1(n)*x2(n)
    % -----------------------------
    % [y,n] = sigmult(x1,n1,x2,n2)
    %   y = product sequence over n, which includes n1 and n2
    %  x1 = first sequence over n1
    %  x2 = second sequence over n2 (n2 can be different from n1)
    %
    n = min(min(n1),min(n2)):max(max(n1),max(n2));  % duration of y(n)
    y1 = zeros(1,length(n)); y2 = y1;
    y1(find((n>=min(n1))&(n<=max(n1))==1))=x1;
    y2(find((n>=min(n2))&(n<=max(n2))==1))=x2;
    y = y1 .* y2;
    %
    % x1 with duration of y
    % x2 with duration of y
    % sequence multiplication
    end
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
    % sequence addition
    end
    function [y,n] = sigsub(x1,n1,x2,n2)
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
    y = y1-y2;
    % initialization
    % x1 with duration of y
    % x2 with duration of y
    % sequence addition
    end
    function [x,n] = stepseq(n0,n1,n2)
    % Generates x(n) = u(n-n0); n1 <= n <= n2
    % ------------------------------------------
    % [x,n] = stepseq(n0,n1,n2)
    %
    n = [n1:n2]; x = [(n-n0) >= 0];
    end
    function [x,n] = impseq(n0,n1,n2)
    % Generates x(n) = delta(n-n0); n1 <= n <= n2
    % ----------------------------------------------
    % [x,n] = impseq(n0,n1,n2)
    %
    n = [n1:n2]; x = [(n-n0) == 0];
    end