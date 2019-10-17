clear
x = (0:0.1:1)';
y = sin(x)+1;

n = size(x,1);

M = [n      sum(x)
     sum(x) sum(x.^2)];
     
b = [sum(1./y)
     sum(x.*(1./y))];
     
a = M\b;
