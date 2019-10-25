//Método de Newton para f(x) = x^3 - 4*x^2 + 5*x -2
x = 1.0731000001

for i = 1:1000
    x = x - (x^3 - 4*x^2 + 5*x -2)/(3*x^2 - 8*x + 5)
end

disp(x)
