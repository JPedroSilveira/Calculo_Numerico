A = [1.000001 2 3;4 5 6;7 8 9]
x = [1;2;5]

b1 = A*x
b2 = b1 + [10^(-8);0;0] //Erro de 10^(-8) adicionado

x1 = resolve(A,b1)
x2 = resolve(A,b2)

//Residuos
residuo_x1 = b1 - A*x1
residuo_x2 = b2 - A*x2

//Erro Relativo
erro_entrada = norm(b1-b2)/norm(b1)
erro_saida = norm(x1-x2)/norm(x1)

//Kappa para cada norma
kappa1 = norm(A,1)*norm(inv(A),1)
kappa2 = norm(A,2)*norm(inv(A),2)
kappaInf = norm(A,%inf)*norm(inv(A),%inf)

erro_maximo = erro_entrada*kappa2 //Erro máximo de acordo com o capa
