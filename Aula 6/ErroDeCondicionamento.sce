function [L,A,C] = fatoraLU(A)
    n = size(A,1)
    L = eye(n,n)
    C = 0
    for j = 1:n-1
        for i = j+1:n
            L(i,j) = A(i,j)/A(j,j)
            C = C + 1
            A(i,j+1:n) = A(i,j+1:n) - L(i,j)*A(j,j+1:n)
            if(A(i,j+1:n) == 0)
                if(L(i,j) ~= 0 && A(j,j+1:n) ~= 0)
                    C = C + (n - j)
                end
            else 
                if(L(i,j) ~= 0 && A(j,j+1:n) ~= 0)
                    C = C + (n - j)*2
                end
            end
            A(i,j) = 0 /*Para evitar erro de arredondamento*/
        end
    end
endfunction

function [x] = solveU(U,b)
    //U = matriz triangular superior
    //b = vetor
    n = size(U,1)
    x(n) = b(n)/U(n,n)
    for i=n-1:-1:1 /*Contador decrescente*/
        x(i) = (b(i) - U(i,i+1:n)*x(i+1:n)) / U(i,i)
    end
endfunction

function [x] = solveL(L,b)
    //L = matriz triângular inferior
    //b = vetor
    n = size(L,1)
    x(1) = b(1)/L(1,1)
    for i = 2:n
        x(i) = (b(i)-L(i,1:i-1)*x(1:i-1))/L(i,i)
    end
endfunction

function [x] = resolve(A,b)
    [L,U] = fatoraLU(A)
    y = solveL(L,b)
    x = solveU(U,y)
endfunction

A = [1.000001 2 3;
     4 5 6
     7 8 9]
     
x = [1; 2; 5]

b1 = A*x
//b2 simula um erro de entrada pequeno na primeira componente do vetor
b2 = b1 + [10^(-8); 0; 0]

x1 = resolve(A,b1)
x2 = resolve(A,b2)

erro_entrada = norm(b1-b2)/norm(b1)
erro_saida = norm(x1-x2)/norm(x1)

//Numero de condicionamento

kappaInf = norm(A,%inf)*norm(inv(A),%inf)
kappa1 = norm(A,1)*norm(inv(A),1)
format(25)
disp('X com entrada exata')
disp(x1)
disp('X com erro de entrada')
disp(x2)
disp('Erro entrada:')
disp(erro_entrada)
disp('Erro saída*:')
disp(erro_saida)
disp('Residuo de b2')
disp(b2 - A*x2)

disp('Erro de condicionamento em norma infinito')
disp(kappaInf)
disp('Erro de condicionamento em norma 1')
disp(kappa1)

disp('Erro máximo na saída pelo Kappa1 (número de condicionamento em norma 1)')
disp(erro_entrada*kappa1)


