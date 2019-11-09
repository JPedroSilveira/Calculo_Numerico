tam_mat = 235

T = zeros(tam_mat,tam_mat) // cria uma matriz cheia de 0s
U = zeros(tam_mat,tam_mat)

for i = 1:tam_mat // monta as matrizes
    for j = 1:tam_mat
        if (i == j) | (i == j-1) | (i == j+1) then
            T(i,j) = 1 //T é matriz tridiagonal
        end
        if (i <= j) then //comentei porque não usaremos nessa questão
             U(i,j) = 1 //U é matriz triangular superior
        end
    end
end

H = T+U
M = H*H

cont = 0
for i =1:(size(M)(1)) //percore as linhas
    for j = 1:(size(M)(2)) //percorre as colunas
        if(M(i,j) == 0) then // se o elemento é IGUAL a zero
            cont = cont + 1
        end
    end
end

disp(cont)
