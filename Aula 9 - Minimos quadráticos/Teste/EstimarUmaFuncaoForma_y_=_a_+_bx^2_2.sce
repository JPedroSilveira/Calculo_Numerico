clear
x = (0:0.1:2.5)';
y = cos(x) + 9;

n = size(x,1);

M = [n      sum(x.^2)
     sum(x.^2) sum(x.^4)];
     
b = [sum(y)
     sum(y.*x.^2)];
     
a = M\b;

