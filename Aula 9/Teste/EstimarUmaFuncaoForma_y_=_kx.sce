clear
x = (-2:0.1:2)'
y = exp(x./2) - 1;

n = size(x,1);

M = [sum(x.^2)];
     
b = [sum(y.*x)];
     
a = M\b;
