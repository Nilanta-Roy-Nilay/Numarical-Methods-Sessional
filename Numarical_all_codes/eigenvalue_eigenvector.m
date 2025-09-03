clc;
clear;

A=[5 0 1;1 2 3;4 1 -2];
X=[0;3;5];

for i=1:50
    Y=A*X;
    m=max(Y);
    X=Y/m;
    fprintf('step: %i  eigenvalue:%.8f\n',i,m);
end
X

[Vector, Value]=eig(A)