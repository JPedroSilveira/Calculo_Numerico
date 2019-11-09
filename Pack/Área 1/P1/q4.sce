tam_mat = 385

a = zeros(tam_mat,tam_mat) // cria uma matriz cheia de 0s
c = zeros(tam_mat,tam_mat)

anti = zeros(tam_mat,tam_mat)

for i = 1:tam_mat // monta as matrizes
    for j = 1:tam_mat
        if (i == j) | (i == j-1) | (i == j+1) then
            a(i,j) = 1 //a é matriz tridiagonal
        end
        /*if (i <= j) then //comentei porque não usaremos nessa questão
             c(i,j) = 1 //c é matriz triangular superior
        end*/
        if( j == (tam_mat - i + 1)) then
            anti(i,j) = 1 //matriz antidiagonal
        end
    end
end

R = a*anti

M = [a R R a]

cont = 0
for i =1:(size(M)(1)) //percore as linhas
    for j = 1:(size(M)(2)) //percorre as colunas
        if(M(i,j) ~= 0) then // se o elemento é DIFERENTE de zero
            cont = cont + 1
        end
    end
end

disp(cont)
