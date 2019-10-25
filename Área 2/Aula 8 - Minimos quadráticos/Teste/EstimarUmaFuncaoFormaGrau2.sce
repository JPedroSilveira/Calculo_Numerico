clear
x=[0, 1, 2, 3, 5, 7, 8, 10]';
y = [8, 5, 4, 2, 1, 2, 4,7]';

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
a = M\b;
