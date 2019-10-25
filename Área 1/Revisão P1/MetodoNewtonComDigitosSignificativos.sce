function [resultado] = erro_relativo(x, xl)
    resultado = abs((x-xl)/x)
endfunction

function [resultado] = digitos_significativos(x, xl)
    erro_rel = erro_relativo(x,xl)
    resultado = 0
    while erro_rel <= 5*10^(resultado * (-1))
        resultado = resultado + 1
    end
    
    resultado = resultado - 1
endfunction

//Método de Newton para f(x) = x^2 - 6
x = 1
xl = x
primeira = %T
while primeira | digitos_significativos(x,xl) < 7
    if primeira then
        primeira = %F
    end
    
    xl = x
    x = x - (x^2-6)/(2*x)
end

disp(x)
