// Deixando claro que esse código só ficou estranho porque eu adaptei pra Q3, geralmente em provas é melhor usar o outro mais clean

function y = fa(x)
    y = exp(6 * x) + exp(-x) + 6*x //aqui vai a função do problema
endfunction

function y = fla(x)
    y = numderivative(fa,x) //faz a derivada sozinho :)
endfunction

function y = f(x) // função da qual você quer a raiz (nesta questão é a derivada de fa(x))
    y = fla(x)
endfunction

function y = fl(x)
    y = numderivative(f,x) //faz a derivada sozinho :)
endfunction

x = 1 //aqui tu bota o X próximo da raiz que tu quer encontrar, ao que parece. Salve geogebra. 
for i = 1:100
    x = x - f(x)/fl(x)
    disp(x)
end

