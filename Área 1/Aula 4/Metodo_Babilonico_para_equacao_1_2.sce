x = 0.9
x_ant = 2
continuar = 1
padrao = 0
padrao_ant = 0
time = 1

format(25)

//Equação x*(e^x) = 10
//Isolando x: x = log(10/x) ou x = 10*(e^-x)
while(continuar)
    x = x^3 - x^2 + 1
    padrao = x - x_ant
    disp(x)
    continuar = x_ant ~= x
    if(continuar && time ~= 2) then
        if(padrao_ant > 0) then
            continuar = (padrao >= 0)
        else
            continuar = (padrao <= 0)
        end
    end
    x_ant = x
    padrao_ant = padrao
    time = time + 1
end
