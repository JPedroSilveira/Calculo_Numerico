x = 2
x_ant = 2
continuar = 1

format(25)

//Equação x*(e^x) = 10
//Isolando x: x = log(10/x) ou x = 10*(e^-x)
while(continuar)
    x = log(10/x)
    disp(x)
    continuar = x_ant ~= x
    x_ant = x
end

disp('x - log(10/x)')
disp(x - (log(10/x))) 
