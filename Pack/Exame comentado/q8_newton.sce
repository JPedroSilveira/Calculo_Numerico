function y = f(x)
    y = x^3 - 43 - 3*x + x ^2 //aqui vai a função do problema
endfunction

function y = fl(x)
    y = numderivative(f,x) //faz a derivada sozinho :)
endfunction

x = 1 //aqui tu bota o X próximo da raiz que tu quer encontrar, ao que parece. Salve geogebra. 
for i = 1:1000
    x = x - f(x)/fl(x)
    disp(x)
end

