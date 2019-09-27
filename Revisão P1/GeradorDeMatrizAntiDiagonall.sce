tam = 385
countA = 0
countP = 0
A = zeros(tam,tam)
P = zeros(tam,tam)

for i = 1:tam
    for j = 1:tam
        if i == j then
            A(i,j) = 2
            countA = countA + 1
        elseif abs(i - j) == 1 then
            A(i,j) = 1 //A(i,j) = 0, suprimido por A ser matriz de zeros
            countA = countA + 1
        end
    end
end

for i = 1:tam
    for j = 1:tam
        if j == (tam-i+1) then
            P(i,j) = 1
            countP = countP + 1
        end
    end
end

disp(4*countA)





