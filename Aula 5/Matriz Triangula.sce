M = [1 2 3 4
     0 5 6 7
     0 0 8 9
     0 0 0 10];
     
b = [5
     4
     4
     2]  
format(25)

function [x] = solveU(U,b)
    n = size(U,1)
    x(n) = b(n)/U(n,n)
    for i=n-1:-1:1 /*Contador decrescente*/
        x(i) = (b(i) - U(i,i+1:n)*x(i+1:n)) / U(i,i)
    end
endfunction

x = solveU(M,b)
