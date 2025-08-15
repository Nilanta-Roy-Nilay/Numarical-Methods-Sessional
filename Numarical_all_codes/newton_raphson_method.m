clc;
format long
f = @(x) exp(-x)-x;
df = @(x) -exp(-x)-1;
a=0; %initial guess

for i=1:10
    r(i) = a-(f(a)/df(a));
    tol(i) = abs(a-r(i));
    a=r(i);
end
disp(r');
disp(tol');