format long
clc;
f = @(x) x.^2-2;
a=1; %f(a) is negative
b=2; %f(b) is positive

for i=1:10
    r(i) = (a*f(b)-b*f(a))/(f(b)-f(a));
    if f(r(i))<0
        a=r(i);
    else
        b=r(i);
    end
end
for i=1:9
    err(i)=abs((r(i)-r(i+1))/r(i+1))*100;
end
disp(r')
disp(err)