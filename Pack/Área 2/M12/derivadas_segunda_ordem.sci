//Encontre os coeficientes da fórmula para aproximar a derivada  f_{xx}(x_n) = [c_1 f_{n} + c_2 f_{n+1}+c_3 f_{n+3}]/h^2
//Settar xc como 0. b = [0 0 2]
//SE H ESTIVER ENVOLVIDO = Fx(xn) = [C1Fn-1 + C2F(Xn + h/6) + C3Fn+1] / H, CONSIDERAMOS H COMO 1, NESTE CASO O COEFICIENTE É 1/6

x = [0 1 3]

xc= 0      
b(1)=0
b(2)=0
b(3)=2  //xc desaparece por ser derivada segunda

for i=1:3
    M(1,i)=1
    M(2,i)=x(i)
    M(3,i)=x(i)^2
end

c=inv(M)*b
disp(c)
//b = [0 0 2] pra derivada segunda


// Código adaptado pra derivadas segundas
