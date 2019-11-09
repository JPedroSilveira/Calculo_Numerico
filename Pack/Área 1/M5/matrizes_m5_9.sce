
tam_mat = 12

a = zeros(tam_mat,tam_mat)
b = zeros(tam_mat,tam_mat)
c = zeros(tam_mat,tam_mat)

for i = 1:tam_mat
    for j = 1:tam_mat
        if (i == j) | (i == j-1) | (i == j+1) then
            a(i,j) = 1
            c(i,j) = 1
        end
        if (i <= j) then
             a(i,j) = 1
             c(i,j) = 1
        end
    end
end
disp(c)
cont = 0
for i = 1:tam_mat
    for k = 1:tam_mat
        for j = 1:tam_mat
            if (a(i,j) == c(j,k) & a(i,j) == 1) then
                b(i,k) = b(i,k) + 1
                cont = cont+1
            end
        end
    end
end
cont_0 = 0
for i =1:tam_mat
    for j = 1:tam_mat
        if(b(i,j) >= 1) then
            cont = cont + b(i,j)+(b(i,j)-1)
        end
        if(b(i,j) == 0) then
            cont_0 = cont_0 + 1
        end
    end
end
disp(b)
disp(cont_0)
bunda = ((tam_mat) - 4)/2 + 1 + (tam_mat - 4) * ((tam_mat - 4) / 2 + 1)
mat_quad = tam_mat * tam_mat
nao_zeros = mat_quad - bunda
disp(bunda)
disp(nao_zeros)
