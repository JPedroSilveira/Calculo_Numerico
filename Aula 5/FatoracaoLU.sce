A = eye(405,405)

for j = 1:405
    for i = 1:405
        if(abs(i - j) > 1)
            A(j,i) = 1
        else
            A(j,i) = 0
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

[L,U,C] = fatoraLU(A)
