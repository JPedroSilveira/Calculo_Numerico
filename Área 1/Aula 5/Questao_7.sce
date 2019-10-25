n = 405
A = eye(n,n)

for j = 1:n
    for i = 1:n
        if(abs(i - j) > 1)
            A(i,j) = 0
        else
            A(i,j) = 1
        end
    end
end

function [L,A,C] = fatoraLU(A)
    n = size(A,1)
    L = eye(n,n)
    C = 0
    for j = 1:n-1
        for i = j+1:n
            L(i,j) = A(i,j)/A(j,j)
            C = C + 1
            for z = j+1:n
                if(A(j,z) ~= 0 && L(i,j) ~= 0)
                    A(i,z) = A(i,z) - L(i,j)*A(j,z)
                    C = C + 2
                end
            end
            A(i,j) = 0 /*Para evitar erro de arredondamento*/
        end
    end
endfunction

[L,U,C] = fatoraLU(A)
