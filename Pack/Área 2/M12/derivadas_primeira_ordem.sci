//Fx(xn+0.8h) = [C1Fn-1 + C2Fn + C3Fn+1] / H
// ESSE AQUI A GENTE USA PRA DERIVADA PRIMEIRA HEEEIN
//SE H ESTIVER ENVOLVIDO = Fx(xn) = [C1Fn-1 + C2F(Xn + h/6) + C3Fn+1] / H, CONSIDERAMOS H COMO 1, NESTE CASO O COEFICIENTE É 1/6
x =[0 1/6 2]   // corresponde a n-1,n e n+1

xc= 0      // onde é calculada a derivada. (xn+0.8h), ficaria 0.8
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

