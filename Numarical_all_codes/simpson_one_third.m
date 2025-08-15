% integration of e^x^2 from 0 to 1 simpson 1/3 n=12(n should be even)

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
    if mod(i,2)==1
        sum=sum+4*f(a);
    else
        sum=sum+2*f(a);
    end
end
sum=h/3*sum