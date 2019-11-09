function y=erro_relativo(x, x1)
    y= abs((x-x1) /x)
endfunction

function y=calcula_digse(x, x1)
    erro_rel = erro_relativo(x, x1)
    y = round(abs(log10(erro_rel)))
endfunction

// Atualizar valores de x (valor) e x1 (aproximação de x)
x=0.000121212
x1=0.00012

disp('Erro relativo:')
disp(erro_relativo(x,x1))

disp('Digse:')
DIGSE=calcula_digse(x, x1)
disp(DIGSE)

