clear;
clc;
% Define the function dy/dx =2x= f(x, y)
f = @(x, y) exp(x^2);

% Step size and number of steps
h = 0.001;
xn=2;
n = (2 - 0) / h;

% Set initial values
x(1) = 0;
y(1) = 1;

% Euler loop
for i = 1:n
    x(i+1) = x(i) + h;
    y(i+1) = y(i) + h * f(x(i), y(i));
    y(i+1)=y(i)+h*(f(x(i),y(i))+f(x(i+1),y(i+1)))/2;  %modi-Euler
end
n
% Exact solution
y_exact = x.^2 + 1;
% Plotting both
plot(x, y, 'ro--', x, y_exact, 'b.--');
legend('Euler Approx', 'Exact Solution');