//Retorna a sequência de números que multiplicam cada casa da base
//Para hexadecimal converter:
// 10 = A
// 11 = B
// 12 = C
// 13 = D
// 14 = E
// 15 = F
//O Resultado é dado do número menos significativo para o mais significativo
function [resultado] = decimal_para_base(x, b)
    resultado = []
    contador = 1
    
    while x >= b  
        resultado(contador) = modulo(x,b)
        x = int(x/b)  
        contador = contador + 1
    end
    
    resultado(contador) = modulo(x,b)
endfunction

//Converte um binário em complemento de dois para decimal 
function [resultado] = bin_comp2_para_dec(s)
    tamanho = length(s)
    resultado = 0
    if tamanho > 0 then
        if part(s,1) ~= 0 then
            resultado = 2^(tamanho-1) * (-1)
        end
        
        contador = 2
        while contador <= tamanho
            if part(s,contador) == '1' then
                resultado = resultado + 2^(tamanho - contador)
            end
            contador = contador + 1
        end
    end
endfunction

//Converte um binário com sinal em decimal
function [resultado] = bin_sinal_para_dec(s)
    tamanho = length(s)
    resultado = 0
    if tamanho > 0 then
        contador = 2
        while contador <= tamanho
            if part(s,contador) == '1' then
                resultado = resultado + 2^(tamanho - contador)
            end
            contador = contador + 1
        end
        if part(s,1) == '1' then
            resultado = resultado * (-1)
        end
    end
endfunction
