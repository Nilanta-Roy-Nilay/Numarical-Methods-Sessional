clc;
clear all;

g=@(x) exp(-x);
a=0;

for i=1:30
    r(i) = g(a);
    err(i) = abs((a-r(i))/r(i))*100;
    a=r(i);

    fprintf('Iter: %i APP_root:%.6f error:%.5f\n',i,r(i),err(i));
    if err(i)<0.01
        break
    end
end