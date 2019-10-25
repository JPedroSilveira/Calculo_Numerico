function [resultado] = erro_relativo(x, xl)
    resultado = abs((x-xl)/x)
endfunction

//Método de Newton para f(x) = x - cos(x)
x = 0.7
xl = x
primeira = %T
while primeira | erro_relativo(x,xl) < 10^(-5)
    if primeira then
        primeira = %F
    end
    
    xl = x
    x = x - (x - cos(x))/(1 + sin(x))
end

disp(x)
