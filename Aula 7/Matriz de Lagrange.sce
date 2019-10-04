//X = Ponto onde a função está sendo calculada
//x = Pontos
//k = Indíce
function y=L(X,x,k)
    n = length(x)
    y = 1
    for j=1:n
        if (k <> j) //Calcula o produto apenas quando j != k
            y = y.*(X-x(j))/(x(k)-x(j))
        end
    end
endfunction

x = [1 3 4 6]'
y = sin(x)
//Calcula n pontos com o polinômio de interpolação
X=0.5:0.1:6.5
//P será um vetor com os resultados dos pontos
p = 0
for k=1:n
    p = p + y(k)*L(X,x,k)
end

plot(X,p,'b.-')

//Caso queira calcular um ponto específico
L(1,x,2) //ponto do vetor x,todos os pontos,indice que está procurando
L(3,x,2) //ponto do vetor x,todos os pontos,indice que está procurando
L(4,x,2) //ponto do vetor x,todos os pontos,indice que está procurando
L(6,x,2) //ponto do vetor x,todos os pontos,indice que está procurando
//Neste caso todos devem ser zero, menos o 3 que está no indice 2
