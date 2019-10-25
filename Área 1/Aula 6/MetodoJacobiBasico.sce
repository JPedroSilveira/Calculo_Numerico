function [x] = jacobi_basico(A,b,N)
    n = size(A,1)
    for k=1:N
        xnew(1) = (b(1) - A(1,2:n)*x(2:n))/A(1,1)
        for i=2:n-1
            xnew(i) = (b(i) - A(i,1:i-1)*x(1:i-1)
                            - A(i,i+1:n)*x(i+1:n))/A(i,i)
        end
        xnew(n) = (b(n) - A(n,1:n-1)*x(1:n-1))/A(n,n)
        
        x = xnew //Atualiza x
    end
endfunction
