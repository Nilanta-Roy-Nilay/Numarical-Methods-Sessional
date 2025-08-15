x = [1, 2, 3, 4, 5];
y = [1, 8, 27, 64, 125];

n = length(x);

DD = zeros(n, n);
DD(:,1) = y';

for j = 2:n
    for i=1:n-j+1
        DD(i,j) = (DD(i+1, j-1)-DD(i,j-1))/(x(i+j-1)-x(i));
    end
end
disp('Divided Difference Table:');
disp(DD);

xp = 2.5;

% Evaluate interpolating polynomial at x_val 
result = DD(1,1);
temp = 1;

for i=2:n
    temp = temp * (xp-x(i-1));
    result = result + DD(1,i)*temp;
end

% Output result 
fprintf('interpolated value at x = %2f is %.4f\n',xp, result);