% integration of e^x^2 from 0 to 1 simpson 3/8  n=12(n should be multiple of 3)

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
    if mod(i,3)==0
        sum=sum+2*f(a);
    else
        sum=sum+3*f(a);
    end
end
sum=3*h*sum/8