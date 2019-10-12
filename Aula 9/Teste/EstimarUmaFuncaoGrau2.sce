clear
x = (0:0.1:1)';
y = sin(x);

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
