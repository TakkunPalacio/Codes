%Matrices
x = [3,3,3,3]; %row matrices
y = [3; 3; 3; 3;]; %column matrices
z = [3,3; 3,3]; %row and column matrix
%obtain submatrix that consist of the first two rows and last two columns of A
A = [1 2 3
3 4 5
6 7 8];
A(1:2,2:3);
%get the 2nd column of A
A(:,2);
%get the 3rd row of A
A(3,:);

u = [0:8]; % short ver of u = [0 1 2 3 4 5 6 7 8]
v = [0:2:8]; % short ver of v = [0 2 4 6 8]
w = [8:0];
%combine two row matrixes to form a 2x3 matrix
p = [u;w]
