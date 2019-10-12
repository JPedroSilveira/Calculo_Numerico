clear
x = [0 1 2 3 4 7]';
y = [1 3 4 6 5 7]';

n = size(x,1);

M = [n      sum(x)
     sum(x) sum(x.^2)];
     
b = [sum(log(y))
     sum(x.*log(y))];
     
a = inv(M)*b;

A = exp(a(1));
B = a(2);

XX = 0:0.1:10;
YY = A*exp(B*XX);

plot(XX,YY,'b');
plot(x,y,'r*');xgrid;
