% integration of e^x^2 from 0 to 1 Trapezoidal method n=12

clear;
clc;
format long;

f=@(x) exp(x.^2);

a=0;
b=1;

n=12;

h=(b-a)/n;

sum=f(a)+f(b);


for i=1:n-1
    a=a+h;
    sum=sum+2*f(a);
end
sum=h/2*sum


%for exact
exact = integral(f, 0, 1)