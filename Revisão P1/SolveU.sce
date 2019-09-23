//Soluciona uma matriz triângular inferior
function [x] = solveU(U,b)
    n = size(U,1)
    x(n) = b(n)/U(n,n)
    for i=n-1:-1:1 //De n-1 até 1 pulando de -1 em -1
        x(i) = (b(i) - U(i, i+1:n)*x(i+1:n))/U(i,i)
    end
endfunction

//Exemplo
M = [1 2 3 4; 0 5 6 7; 0 0 8 9; 0 0 0 10]
b = [5 4 4 2]'
x = solveU(M,b)
disp(x)
//Verifica a resposta, M*x tem que ser igual a b
disp(M*x)
