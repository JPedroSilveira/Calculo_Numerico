clear;
x= 1:0.1:2 // O X, claramente
x = x'
y = [9./x] // divisão elemento a elemento

n=size(x,1);

M=[x.^0 x] //x^0 e x polinomio de a+bx, se quiser a+bx+cx^2 ficaria [x.^0 x x.^2]

cu = M' * M

plau = M' * y //SE VOCÊ CRIOU Y COM PONTOS SEPARADOS (SEM SER FUNÇÃO DE X), AQUI TEM QUE SER y'
            //alternativamente, só adiciona o ' (ou tira ele) se der inconsistent rows
            //isso aí, boa sorte nas provas :0

disp('Coeficientes:')
disp(inv(cu)*plau)
