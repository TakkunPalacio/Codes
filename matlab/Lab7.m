%x(n)={1,2,->3,4,5,6,7,6,5,4,3,2,1}
%a. x(n)= 2x(n-5)-3x(n+4)
%b. x(b) = x(3-n) - x(n)x(n-2)
n = -2:10;
x = [1 2 3 4 5 6 7 6 5 4 3 2 1];
[x1,n1] = sigshift(x,n,5);%x1 = x(n-5)
[x2,n2] = sigshift(x,n,-4);%x2 = x(n+4)
[x3,n3] = sigsub(2*x1,n1,3*x2,n2);%x3 = 2x(n-5)-3x(n+4)
subplot(2,1,1);
stem(n3,x3);
xlabel('n'); 
ylabel('x(n)');
title('x(n)= 2x(n-5)-3x(n+4)');
x3
n3

[x4,n4] = sigfold(x,n)%x4 = x(-n)
[x5,n5] = sigshift(x4,n4,3);%x5 = x(3-n)
[x6,n6] = sigshift(x,n,2);%x6 = x(n-2)
[x7,n7] = sigmult(x,n,x6,n6);%x7 = x(n)x(n-2)
[x8,n8] = sigsub(x5,n5,x7,n7);%x8 = x(3-n) - x(n)x(n-2)
subplot(2,1,2);
stem(n8,x8);
xlabel('n');
ylabel('x(n)');
title('x(b) = x(3-n) - x(n)x(n-2)');
x8
n8
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