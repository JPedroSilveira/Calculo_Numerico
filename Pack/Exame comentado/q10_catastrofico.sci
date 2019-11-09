function y=erro_relativo(x, x1)
    y= abs((x-x1) /x)
endfunction

function y=calcula_digse(x, x1)
    erro_rel = erro_relativo(x, x1)
    y = round(abs(log10(erro_rel)))
endfunction
format(20)
// Atualizar valores de x (valor) e x1 (aproximação de x)
x=111222333444/14-7944452388 // podemos usar isso pois o próprio Scilab tem 16 dígitos de precisão
x_real = 0.85714285714285714285714285714286//esse você calcula na calculadora e copia aqui


disp('Digse:')
DIGSE=calcula_digse(x, x_real)
disp(DIGSE)
