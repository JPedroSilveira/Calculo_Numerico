function y=f(x)
    y = (x^2 + ((sqrt(3)/3)-(sqrt(2)/2))*x - (sqrt(6)/6))./(x - (1/2))
endfunction

function y = fl(x)
    y = (((2*x + ((sqrt(3)/3)-(sqrt(2)/2)))*(x - (1/2))) - (x^2+((sqrt(3)/3)-(sqrt(2)/2))*x - (sqrt(6)/6)))/((x - (1/2))^2)
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


format(25)
/*x = -0.5:0.01:0.3
plot(x,f(x),'*r')*/


x=0.7
xp = 0
primeira = %T
count = 0
while primeira || digitos_significativos(x,xp) <= 5
    if primeira then
        primeira = %F
    end
    count = count + 1
    xp = x
    x = x - f(x)/fl(x)
end

disp(x)
disp(count)
