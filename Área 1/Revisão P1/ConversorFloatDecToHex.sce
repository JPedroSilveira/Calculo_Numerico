function [resultado] = float_dec_to_base(number)
    contador = 1
    inteiro = int(number)
    resultado = dec2hex(inteiro) + '.'
    fracionario = modulo(number,inteiro)
    
    while modulo(fracionario,1) ~= 0
        fracionario = fracionario * 16
        
        numero = int(fracionario)
        numero_s = '0'
        
        if numero == 10 then
            numero_s = 'A'
        elseif numero == 11 then
            numero_s = 'B'
        elseif numero == 12 then
            numero_s = 'C'
        elseif numero == 13 then
            numero_s = 'D'
        elseif numero == 14 then
            numero_s = 'E'
        elseif numero == 15 then
            numero_s = 'F'   
        else 
            numero_s = string(numero)
        end
        
        resultado = resultado + numero_s
        
        fracionario = modulo(fracionario,numero)
    end
endfunction
