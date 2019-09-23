//Executar MetodoJacobEGaussSeidelExemplo.sce antes
A = [4 4
     3 4]

b = [1 1]'

x1 = [1 0]'

jacobi(A,b,x1,-1,50)

disp('Por fatoração')
x = resolve(A,b)
disp(x)




