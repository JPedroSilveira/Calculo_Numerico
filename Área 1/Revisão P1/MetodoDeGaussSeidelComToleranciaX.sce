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
        
        deltax = norm(x-xnew,%inf)
        
        if deltax < tol then
            convergiu = %T
        end
        
        k = k+1
        x = xnew //atualiza x
   end
   if tol ~= -1 & ~convergiu then
       error('Não convergiu')
   end
endfunction

b = ones(1,8)'
x1 = zeros(1,8)'
A = zeros(8,8)

for i = 1:8
    for j = 1:8
        if i == j then
            A(i,j) = 2
        elseif abs(i - j) == 1 then
            A(i,j) = 1 //A(i,j) = 0, suprimido por A ser matriz de zeros
        end
    end
end

[x,dx,k] = gauss_seidel(A,b,x1,10^-7,1000)
disp(k)



