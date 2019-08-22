x = 29.16 /*Base 10*/
base = 6 /*Base de saída*/
maxPrecisao = 10
cont = 0
resultado = ''
decPart = int(x)
fracPart = x - int(x)

while(decPart >= base)
    resultado = strcat([string(modulo(decPart,base)),resultado])
    decPart = int(decPart/base)
    cont = cont + 1
end

if(decPart ~= 0)
    resultado = strcat([string(decPart),resultado])
end

if(fracPart ~= 0)
    resultado = strcat([resultado, '.'])
end

while(fracPart ~= 0 & maxPrecisao > 0)
    fracPart = fracPart * base
    intFracPart = int(fracPart)
    resultado = strcat([resultado, string(intFracPart)])
    fracPart = fracPart - intFracPart
    maxPrecisao = maxPrecisao - 1
end

disp(resultado)




