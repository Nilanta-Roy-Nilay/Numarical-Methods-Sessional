A=[4 1;1 3];
X=[1;1];

for i=1:10
    Y=A*X;
    m(i) = max(Y);
    X = Y/m(i);
    if i>1 && abs(m(i)-m(i-1))<0.001
        break
    end
end
err = abs(m(i)-m(i-1))/m(i)*100;
