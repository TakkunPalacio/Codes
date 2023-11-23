n =-5:5
x = 2*impseq(-2,-5,5) - impseq(4,-5,5);
subplot(3,1,1);
stem(n,x);
xlabel('n');
ylabel("y");
title("a. 2*impseq(-2,-5,5) - impseq(4,-5,5)");

n = 0:20
x = n .* (stepseq(0,0,20) - stepseq(10,0,20)) + 10*exp(-0.3*(n-10))*(stepseq(10,0,20) - stepseq(20,0,20));
subplot(3,1,2);
stem(n,x);
xlabel('n');
ylabel("y");
title("b. n ");

function [x,n] = impseq(n0,n1,n2)
    n = [n1:n2]; x = [(n-n0) == 0];
end
function [x,n] = stepseq(n0,n1,n2)
    n = [n1:n2]; x = [(n-n0) >= 0];
    end