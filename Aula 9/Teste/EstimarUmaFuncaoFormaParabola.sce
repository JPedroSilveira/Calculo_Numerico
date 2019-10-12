clear
x = (1:0.5:12)';
y = 11*sin(x) + x.^2;

n = size(x,1);

p = 2;
for i=1:p+1
    for j=1:p+1
        /*Monta a matriz do elemento genérico polinomial*/
        M(i,j) = sum(x.^(i+j-2));
    end
end

for i = 1:p+1
    /*Monta o vetor b do sistema*/
    b(i) = sum(y.*x.^(i-1));
end
a = inv(M)*b;

Xl = 3.14

resposta = a(1) + a(2)*Xl + a(3)*Xl^2
