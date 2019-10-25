clear
x = (0:0.1:1)';
y = sin(x)+1;

n = size(x,1);

M = [n      sum(x)
     sum(x) sum(x.^2)];
     
b = [sum(log(y))
     sum(x.*log(y))];
     
a = M\b;
a1 = exp(a(1))
a2 = a(2)
