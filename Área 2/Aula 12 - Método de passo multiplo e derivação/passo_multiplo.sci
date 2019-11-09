//ETC = O(h^4) se for de 3 estágios, 
//logo o método é de ordem 3 com erro de trumcamento global de ordem 3 e o local de ordem 4
//O método é estavel se todas as raizes forem menores que 1
//Cada coeficiente da uma ordem a mais para o método

//Valores em x são: Un+1 = Un + h (C1fn<+0> + C2fn<-1> + C3fn<-2>) //valores em <>
x(1)=1
x(2)=0
x(3)=-1

b(1)=1
b(2)=0 
b(3)=1/3

/*Se Un+1 = Un-1 + h... então:
b(1)=2
b(2)=0 
b(3)=2/3
//b(4) = 0, b(5) = 2/5 ...
 
Se Un+1 = Un + h... então:
b(1)=1
b(2)=1/2
b(3)=1/3
//se tiver b(4) é 1/4 ...
*/

for i=1:3
    M(1,i)=1
    M(2,i)=x(i)
    M(3,i)=x(i)^2
end
disp(M)
disp(b)
c=inv(M)*b

S=c(1)^2+c(2)^2+c(3)^2
disp(S)

disp(c)       //resp.: C = coeficientes

/*
Se utilizarmos o método de Adams-Bashforth de ordem 4 para resolver uma EDO, qual método deve ser utilizado nas primeiras iteracões:
Taylor de ordem 3
*/



