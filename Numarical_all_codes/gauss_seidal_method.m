% 7x+2y-3z=21
% 2x+3y+5z=30
% 3x-5y+9z=15
clc;
clear;

A=[7,2,-3;2,3,5;3,-5,9];
b=[21;30;15];
Exact=inv(A)*b
% x=(21-2*y+3*z)/7;
% y=(30-2*x-5*z)/3;
% z=(15-3*x+5*y)/9;

%initial guess
a=5;
b=6;
c=7;

for i=1:100
    x=(21-2*b+3*c)/7;
    y=(30-2*a-5*c)/3;
    z=(15-3*a+5*b)/9;
    
    a=x;
    b=y;
    c=z;
  
end
App=[x;y;z];
fprintf("x=%.3f ,y=%.3f ,z=%.3f ",x,y,z);
err=abs(Exact-App)