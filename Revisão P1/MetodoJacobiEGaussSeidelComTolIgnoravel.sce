//A = Matriz
//b = Vetor
//x = Vetor
//tol = Tolerância para considerar convergente
//N = Número máximo de iterações
function [x,deltax,k] = jacobi(A,b,x,tol,N)
    n = size(A,1)
    xnew = x //Para inicializar o tamanho de xnew com o tamanho de x
    convergiu = %F
    
    k = 1
    while k<=N & ~convergiu
        xnew(1) = (b(1) - A(1,2:n)*x(2:n))/A(1,1)
        for i = 2:n-1
            xnew(i) = (b(i) - A(i,1:i-1)*x(1:i-1) - A(i,i+1:n)*x(i+1:n))/A(i,i)
        end
        xnew(n) = (b(n) - A(n,1:n-1)*x(1:n-1))/A(n,n)
        
        deltax = max(abs(x-xnew))
        if tol ~= -1 then
            if deltax < tol then
                convergiu = %T
            end
        end
        
        k = k+1
        x = xnew //atualiza x
        disp(k)//depuração
        disp(x)//depuração
   end
   if tol ~= -1 & ~convergiu then
       error('Não convergiu')
   end
endfunction

//A = Matriz
//b = Vetor
//x = Vetor
//tol = Tolerância para considerar convergente
//N = Número máximo de iterações
function [x,deltax,k] = gauss_seidel(A,b,x,tol,N)
    n = size(A,1)
    xnew = x //Para inicializar o tamanho de xnew com o tamanho de x
    convergiu = %F
    
    k = 1
    while k<=N & ~convergiu
        xnew(1) = (b(1) - A(1,2:n)*x(2:n))/A(1,1)
        for i = 2:n-1
            //Muda apenas o uso do xnew em vez de x nesta equação e na última comparado com o método de Jacobi
            xnew(i) = (b(i) - A(i,1:i-1)*xnew(1:i-1) - A(i,i+1:n)*x(i+1:n))/A(i,i)
        end
        //Muda o uso do xnew aqui também
        xnew(n) = (b(n) - A(n,1:n-1)*xnew(1:n-1))/A(n,n)
        
        deltax = max(abs(x-xnew))

        if tol ~= -1 then
            if deltax < tol then
                convergiu = %T
            end
        end
        
        k = k+1
        x = xnew //atualiza x
        disp(k)//depuração
        disp(x)//depuração
   end
   if tol ~= -1 & ~convergiu then
       error('Não convergiu')
   end
endfunction

//matriz diagonal dominante
A = [3 2 1 0 0 0 0 0
     2 6 2 1 0 0 0 0
     1 2 6 2 1 0 0 0
     0 1 2 6 2 1 0 0
     0 0 1 2 6 2 1 0
     0 0 0 1 2 6 2 1
     0 0 0 0 1 2 6 2
     0 0 0 0 0 1 2 6]

b = [1 1 1 1 1 1 1 1]' //Observe que o ' realiza a operação de transposição, transformando b em um vetor com uma coluna e 8 linhas
x1J = [0 0 0 0 0 0 0 0]' //Mesma coisa vale aqui
x1G = [0 0 0 0 0 0 0 0]' //Mesma coisa vale aqui

//Teste do método de Jacobi e Gauss Seidel com uma tolerância de 10 na menos 3 e máximo de 1000 iterações
[xJ,dxJ,interacoesJacobi] = jacobi(A,b,x1J,10^(-3),1000)    
[xG,dxG,interacoesGaussSeidel] = gauss_seidel(A,b,x1G,10^(-3),1000)    

format(25)
disp('Método de Jacobi')
disp('Resultado:')
disp(xJ)
disp('Residuo:')
disp(b-A*xJ)
disp('Número de condicionamento em norma 1')
disp(norm(A,1)*norm(inv(A),1))
disp('Número de iterações necessárias')
disp(interacoesJacobi)

disp('Método de Gauss Seidel')
disp('Resultado:')
disp(xG)
disp('Residuo:')
disp(b-A*xG)
disp('Número de condicionamento em norma 1')
disp(norm(A,1)*norm(inv(A),1))
disp('Número de iterações necessárias')
disp(interacoesGaussSeidel)

