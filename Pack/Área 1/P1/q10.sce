function y = f(x)
    y = (x^2 + (sqrt(3)/3 - sqrt(2)/2) * x - sqrt(6)/6)/(x-1/2) //aqui vai a função do problema
endfunction

function y = fl(x)
    y = numderivative(f,x) //faz a derivada sozinho :)
endfunction

x = 0.9 //aqui tu bota o X próximo da raiz que tu quer encontrar. Salve geogebra. 
for i = 1:100
    x = x - f(x)/fl(x)
    disp(x)
end

