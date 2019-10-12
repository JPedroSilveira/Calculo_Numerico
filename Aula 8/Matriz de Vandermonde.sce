x = [1 3 4 6]'
y = sin(x)
n = length(x)
MatrizDeVandermonde = zeros(n,n)

plot(x,y,'ro-'),xgrid

for i=1:n
    for j=1:n
        MatrizDeVandermonde(i,j)=x(i)^(j-1)
    end
end

//Coeficientes da equação na ordem (a1,a2,a3,...)
a = inv(MatrizDeVandermonde)*y

//Calcula UM ponto com o polinomio de interpolação
//Onde X é o ponto onde se deseja a interpolação
X=3.2
p = 0
for k=1:n
    p = p + a(k)*X^(k-1)
end

//Calcula n pontos com o polinômio de interpolação
X=0.5:0.1:6.5
//P será um vetor com os resultados dos pontos
p = 0
for k=1:n
    p = p + a(k)*X.^(k-1)
end

plot(X,p,'b.-')
