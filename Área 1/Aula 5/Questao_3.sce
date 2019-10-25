n = 341
c = 0
T = eye(n,n)
U = eye(n,n)
TU = eye(n,n)
for j = 1:n
    for i = 1:n
        if(abs(i - j) > 1)
            T(j,i) = 0
        else
            T(j,i) = 1
        end
    end
end

for j = 1:n
    for i = 1:n
        TU(j,i) = T(j,:) * U(:,i)
        for z = 1:n
            if(T(j,z)~=0 && U (z,i)~=0)
                c = c + 1
            end
        end
    end
end


