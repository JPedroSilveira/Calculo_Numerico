function [resultado] = erro_relativo(x, xl)
    resultado = abs((x-xl)/x)
endfunction

function [resultado] = digitos_significativos(x, xl)
    erro_rel = erro_relativo(x,xl)
    resultado = 0
    while erro_rel <= 5*10^(resultado * (-1))
        resultado = resultado + 1
    end
    
    resultado = resultado - 1
endfunction

function [x] = solveU(U,b)
    n = size(U,1)
    x(n) = b(n)/U(n,n)
    for i = n-1:-1:1
        x(i) = (b(i)-U(i,i+1:n)*x(i+1:n))/U(i,i)
    end
endfunction

function [x] = solveL(L,b)
    n = size(L,1)
    x(1) = b(1)/L(1,1)
    for i=2:n
        x(i)=(b(i)-L(i,1:i-1)*x(1:i-1))/L(i,i)
    end
endfunction

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

function [x] = resolve(A,b)
    [L,U] = fatoraLU(A)
    y = solveL(L,b)
    x = solveU(U,y)
endfunction

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
   end
   if tol ~= -1 & ~convergiu then
       error('Não convergiu')
   end
endfunction

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
   end
   if tol ~= -1 & ~convergiu then
       error('Não convergiu')
   end
endfunction

function [resultadoJ] = digitos_significativos_jacobi(A,b,x,k,n)
    [xlJ,deltaxJ,k] = jacobi(A,b,x,-1,k)
    xstarJ = resolve(A,b)
    resultadoJ = digitos_significativos(xstarJ(n),xlJ(n))
endfunction

function [resultadoG,xstarG,xlG] = digitos_significativos_gauss_seidel(A,b,x,k,n)
    [xlG,deltaxG,k] = gauss_seidel(A,b,x,-1,k)
    xstarG = resolve(A,b)
    resultadoG = digitos_significativos(xstarG(n),xlG(n))
endfunction
