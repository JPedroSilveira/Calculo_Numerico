//A = Matriz
//b = Vetor
//x = Vetor
//tol = Tolerância para considerar convergente
//N = Número máximo de iterações
function [x,deltax] = gauss_seidel(A,b,x,tol,N)
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
        if deltax < tol then
            convergiu = %T
        end
        
        k = k+1
        x = xnew //atualiza x
        disp([k,x',deltax]) //depuração
   end
   if ~convergiu then
       error('Não convergiu')
   end
endfunction
