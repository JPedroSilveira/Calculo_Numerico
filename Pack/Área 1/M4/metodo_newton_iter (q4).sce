function y = f(x) // função da qual você quer a raiz
    y = sin(x) - (1/x) //aqui vai a função do problema
endfunction

function y = fl(x)
    y = numderivative(f,x) //faz a derivada sozinho :)
endfunction

x = 1 //aqui tu bota o X próximo da raiz que tu quer encontrar, ao que parece. Salve geogebra. 
for i = 1:100
    x = x - f(x)/fl(x)
    disp(x)
end

