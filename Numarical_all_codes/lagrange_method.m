clc;
clear;

x=[1 2 3 3.5];
y=[1 128 300 400];

xp=3.1;

n=length(x);

L=ones(1,n);

for i=1:n
   
    for j=1:n
        if j~=i
            L(i)=L(i)*(xp-x(j))/(x(i)-x(j));
        end
    end
    
end

disp(L*y')