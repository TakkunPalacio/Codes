% n= -5:5;
% x = 2 * impseq(-2,-5,5) - impseq(4,-5,5);
% stem(n,x); title("sequence in Problem 2.1a")
% xlabel("n"); ylabel("x(n)");
x = [1:7,6:-1:1];
n = -2:10;
[x1,n1] = sigshift(x,n,5);
[x2,n2] = sigshift(x,n,-4);

[x3,n3] = sigadd(2*x1,n1,(-3)*x2,n2);
stem(n3,x3); 
title("Shifter");
xlabel("n"); ylabel("x(n)");


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