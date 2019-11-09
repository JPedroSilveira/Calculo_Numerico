function y= f(x)
    y =  sin(x) - 6 + x // função do problema
endfunction

a = -100 // início do intervalo 
b = 100 // fim do intervalo
//obs: você pode alterar o intervalo para ficar mais próximo da raiz do função, caso você já a conheça.
//plote a função no Geogebra para facilitar, caso queira.
m = (a+b)/2

for i = 1:1000
    m = (a+b)/2
    if(f(a)*f(m)<0) then
        b=m
    else
        a=m
    end
    disp([a b])
    
end
