function y = f(x)
    y = log(x) - sin(x) + x - 14 //aqui vai a função do problema
endfunction

function y = fl(x)
    y = numderivative(f,x) //faz a derivada sozinho :)
endfunction

x = 11 //aqui tu bota o X próximo da raiz que tu quer encontrar, salve Geogebra. 
for i = 1:100
    x = x - f(x)/fl(x)
    disp(x)
end

