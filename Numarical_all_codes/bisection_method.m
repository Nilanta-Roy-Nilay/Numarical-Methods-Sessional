f=@(x) x^2 -2;
a=1;
b=2;

for i=-1:7
    r = (a+b)/2;
    disp(r);
    if f(r) >0
        b = r
    else
        a=r
    end
end