//rode o código jacobi.sce ou gauss_seidel antes
//essa aqui é a Q3 do questionário
A = [ 6 1 ; -1 4 ]
b = [ 1 ; 2]
x1 = [2 ; 0]
[x,dx] = jacobi(A,b,x1,10^(-3),4)

