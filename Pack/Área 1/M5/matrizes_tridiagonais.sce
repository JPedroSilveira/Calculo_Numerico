
tam_mat = 5

a = zeros(tam_mat,tam_mat)
b = zeros(tam_mat,tam_mat)
c = zeros(tam_mat,tam_mat)

for i = 1:tam_mat
    for j = 1:tam_mat
        if (i == j) | (i == j-1) | (i == j+1) then
            a(i,j) = 1 //a é matriz tridiagonal
        end
        if (i <= j) then
             c(i,j) = 1 //c é uma matriz com a diagonal e o triângulo superior preenchidos
        end
    end
end
disp(a)
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

for i =1:tam_mat
    for j = 1:tam_mat
        if(b(i,j) >= 1) then
            cont = cont + b(i,j)+(b(i,j)-1)
        end
    end
end
disp(b)
disp(cont)
