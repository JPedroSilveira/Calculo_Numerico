function [L,A] = fatoraLU(A)
    n = size(A,1)
    L = eye(n,n)
    for j = 1:n-1
        for i = j+1:n
            L(i,j) = A(i,j)/A(j,j)
            A(i,j+1:n) = A(i,j+1:n) - L(i,j)*A(j,j+1:n)
            A(i,j) = 0 //Força para evitar erros de arredondamento
        end
    end
endfunction

//Exemplo
A = [1 2 3;4 5 6;7 8 9]
[L,U] = fatoraLU(A)
disp([L U])
//Validaçao
disp(L*U)
