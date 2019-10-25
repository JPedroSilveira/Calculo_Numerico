A = 1001
x = 10
x_ant = 2
continuar = 1

format(25)

while(continuar)
    x = x/2 + A/(2*x)
    disp(x)
    continuar = x_ant ~= x
    x_ant = x
end

disp('x*x:')
disp(x*x)
