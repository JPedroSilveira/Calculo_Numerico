clear
x = (0:0.1:10)';
y = sin(x);

n = size(x,1);

p = 1;
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

XX = 0:0.1:10;
YY = a(1)+a(2)*XX;

plot(XX,YY,'b');
plot(x,y,'r*');xgrid;

residuo = 0;

for i=1:p+1
    YY=YY+a(i)*XX.^(i-1);
    residuo = residuo + a(i)*x.^(i-1);
end


