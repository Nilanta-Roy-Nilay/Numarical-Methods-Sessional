clear;
clc;

%dy/dx=x+y y(0)=1  y(0.2)=?  where h=0.1
format long
f=@(x,y) x+y;

x(1)=0;
y(1)=1;

xn=0.2;

h=0.1;

n=(xn-x(1))/h;

for i=1:n
    %Euler
    %y(i+1)=y(i)+h*f(x(i),y(i));
    %x(i+1)=x(i)+h;

    %y(i+1)=y(i)+h*(f(x(i),y(i))+f(x(i+1),y(i+1)))/2;  %modi-Euler
    
    %Heun's
    %k1=f(x(i),y(i));
    %k2=f(x(i)+h,y(i)+h*k1);
    %y(i+1)=y(i)+h*(k1+k2)/2;
    %x(i+1)=x(i)+h;

    %midpoint
    %k1=f(x(i),y(i));
    %k2=f(x(i)+h/2,y(i)+h/2*k1);
    %y(i+1)=y(i)+h*k2;
    %x(i+1)=x(i)+h;
    
    %Ralston
    %k1=f(x(i),y(i));
    %k2=f(x(i)+3*h/4,y(i)+3*h*k1/4);
    %y(i+1)=y(i)+h*(k1+2*k2)/3;
    %x(i+1)=x(i)+h;

    %R-K 4th order
    k1=f(x(i),y(i));
    k2=f(x(i)+h/2,y(i)+h*k1/2);
    k3=f(x(i)+h/2,y(i)+h*k2/2);
    k4=f(x(i)+h,y(i)+h*k3);
    y(i+1)=y(i)+h*(k1+2*k2+2*k3+k4)/6;
    x(i+1)=x(i)+h;

end

