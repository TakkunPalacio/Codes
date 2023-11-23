n =-5:5
x = 2*impseq(-2,-5,5) - impseq(4,-5,5);
subplot(3,1,1);
stem(n,x);
xlabel('n');
ylabel("y");
title("a.2δ(n+2)-δ(n-4)");

n = 0:20
a = stepseq(0,0,20) - stepseq(10,0,20);
b = 10*exp(-0.3*(n-10));
c= stepseq(10,0,20) - stepseq(20,0,20);
x = n.*(a)+b.*c;
subplot(3,1,2);
stem(n,x);
xlabel('n');
ylabel("y");
title("b. n[u(n)-u(n-10)]+10e^-0.3(n-10)[u(n-10)-u(n-20)]");

%c. x(n) = cos(0.04*pi*n) + 0.2*randn(size(n)), n = 0,1,2,...,50;
n = 0:50;
x = cos(0.04*pi*n) + 0.2*randn(size(n));
subplot(3,1,3);
stem(n,x);
xlabel('n');
ylabel("y");
title("c. cos(0.04*pi*n) + 0.2*w(n)");


function [x,n] = impseq(n0,n1,n2)
    n = [n1:n2]; x = [(n-n0) == 0];
end
function [x,n] = stepseq(n0,n1,n2)
    n = [n1:n2]; x = [(n-n0) >= 0];
    end