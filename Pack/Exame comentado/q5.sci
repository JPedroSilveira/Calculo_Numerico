//Fx(xn+0.8h) = [C1Fn-1 + C2Fn + C3Fn+1] / H
x =[0 1/6 2]   // corresponde a f (n+0),f (h/6) e f (n+2)

xc= 0      // onde eh calculada a derivada. (xn+0.8h) seria 0.8, aqui temos xn+0   

b(1)=0
b(2)=1 
b(3)=2*xc //tem que usar aqui xc e não x*n

for i=1:3
    M(1,i)=1
    M(2,i)=x(i)
    M(3,i)=x(i)^2
end

c=inv(M)*b
disp('Coeficientes')
disp(c)

