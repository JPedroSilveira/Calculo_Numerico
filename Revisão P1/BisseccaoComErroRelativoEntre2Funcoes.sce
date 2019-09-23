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

function y=f(x)
    y = sin(x) - x^4 + 2*x -1
endfunction

a=-5 //Chute inferior
b=1 //Chute superior

//Iteração do método da bisseção
while digitos_significativos(a,b) <= 5
    m = (a+b)/2 //Ponto médio
    if(f(a)*f(m)<0) then
        b = m
    else 
        a = m
    end
end

disp([m (sin(m))])
