clear
x = (1:0.1:4)';
y = sin(20 + 1./x);

n = size(x,1);

p = 3;
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


XX = 1:0.5:12;
YY = a(1)+a(2).*XX+a(3).*XX.^2;

plot(XX,YY,'b');
plot(x,y,'r*');xgrid;

Xl = 2.1
resposta = a(1)+a(2)*Xl+a(3)*Xl^2+a(4)*Xl^3;
/*
residuo = 0;

for i=1:p+1
    YY=YY+a(i)*XX.^(i-1);
    residuo = residuo + a(i)*x.^(i-1);
end
*/

