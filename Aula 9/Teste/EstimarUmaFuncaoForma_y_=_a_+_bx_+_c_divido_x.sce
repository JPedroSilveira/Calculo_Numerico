clear
x = (1:0.1:2.5)';
y = cos(x./9 + 3);

n = size(x,1);

M = [n          sum(x)      sum(1./x)
     sum(x)     sum(x.^2)   n
     sum(1./x)  n           sum(1./(x.^2))];
     
b = [sum(y)
     sum(y.*x)
     sum(y./x)];
     
a = M\b;

Xl = 2.25;

resposta = a(1) + a(2)*Xl + (a(3)/Xl)
