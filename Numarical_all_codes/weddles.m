% integration of e^x^2 from 0 to 1 weddles n=12 (n shold be multiple of 6)

clear;
clc;
format long;

f = @(x) exp(x.^2);

a = 0;
b = 1;
n = 12; % subintervals, must be multiple of 6 for Weddle's rule

h = (b - a) / n;

% Generate points
x = a:h:b;
y = f(x);

sum = 0;

% Apply Weddle's rule in blocks of 6 subintervals (7 points)
for k = 1:6:n
    sum = sum + (3*h/10) * ( ...
        y(k)   + 5*y(k+1) + y(k+2) + ...
        6*y(k+3) + y(k+4) + 5*y(k+5) + y(k+6) );
end

sum