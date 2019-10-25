n = 274
c = 0
A = eye(n,n)
for j = 1:n
    for i = 1:n
        if(abs(i - j) > 1)
            A(j,i) = 0
        else
            A(j,i) = 1
        end
    end
end

B = A * A

for j = 1:n
    for i = 1:n
        if(B(j,i)~=0)
            c = c + 1
        end
    end
end


