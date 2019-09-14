T = eye(266,266)
U = eye(266,266)

for j = 1:266
    for i = 1:266
        if(abs(i - j) > 1)
            T(j,i) = 0
        else
            T(j,i) = 1
        end
        
        if (i - j) >= 0
            U(j,i) = 1
        else
            U(j,i) = 0
        end
    end
end

M = (T + U) * (T + U)
C = 0

for j = 1:266
    for i = 1:266
        if (M(j,i) ~= 0)
           C = C + 1 
        end 
    end
end
