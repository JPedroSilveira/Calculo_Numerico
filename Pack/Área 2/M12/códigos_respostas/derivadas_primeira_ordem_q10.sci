//Fx(xn+0.8h) = [C1Fn-1 + C2Fn + C3Fn+1] / H
// ESSE AQUI A GENTE USA PRA DERIVADA PRIMEIRA HEEEIN

x =[0 1/8 2]   // corresponde a n+0,n + 1/8 e n+2

xc= 0      // onde é calculada a derivada. (xn+0) fica = 0

b(1)=0
b(2)=1
b(3)=2*xc //tem que usar aqui xc

for i=1:3
    M(1,i)=1
    M(2,i)=x(i)
    M(3,i)=x(i)^2
end

c=inv(M)*b
disp('Coeficientes: ')
disp(c)

