//Converte um número binário representado em IEEE754 para decimal
//Dado:
// SINAL: string, representa o primeiro bit de sinal
// EXPOENTE: string com os digitos do expoente em binário
// MANTISSA: string com os digitos da mantissa em binário
// BIAS: inteiro com a BIAS da máquina em decimal
function [resultado] = bin_ieee754_dec(SINAL, EXPOENTE, MANTISSA,BIAS)
    tamanhoMantissa = length(MANTISSA)
    contador = 1
    mantissa = 0
    while contador < tamanhoMantissa
        if part(MANTISSA, contador) == '1' then
            mantissa = mantissa + (1/(2^(contador)))
        end 
        contador = contador + 1
    end

    expoente = bin2dec(EXPOENTE)

    if expoente == 0 then
        if mantissa == 0 then
            resultado = 0
        else 
            error('Está função não trabalha com números subnormais!')
        end
    else  
        somenteUm = %T
        for index = 1:length(EXPOENTE)
            if part(EXPOENTE,index) == '0' then
                somenteUm = %F
            end
        end
        
        if somenteUm then
            if mantissa == 0 then
                resultado = %inf
            else
                resultado = %nan
            end
        else
            resultado =  mantissa * 10^(expoente - BIAS)
            if SINAL == '1' then
                resultado = resultado * (-1)
            end
        end
    end
endfunction
