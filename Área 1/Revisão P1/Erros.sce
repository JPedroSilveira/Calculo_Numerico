function [resultado] = erro_absoluto(x, xl)
    resultado = abs(x-xl)
endfunction

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

function [resultado] = epsilon_da_maquina()
    tentativa = -1
    while (1 + 2^(tentativa)) ~= 1 
        tentativa = tentativa - 1
    end
    
    resultado = '2^(' + string(tentativa) + ')'
endfunction

