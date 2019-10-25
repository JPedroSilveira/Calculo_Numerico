function S=assimet(f,a,b,n)
    //Solução para [1 1 1; 0 1/2 1; 0 1/4 1] * [w1 w2 w3] = h * [1 1/2 1/3]
    //Calcular baseado nos pontos 1 1/2 e 1/4
    //Fazendo A = [1 1 1; 1 1/2 1/4; 1 1/4 1/16] baseado nos pontos e na matriz:
    //[1 1 ... 1; t1 t2 ... tn; t1^2 t2^2 ... tn^2; ...] * [w1 w2 w3 ...] = [b - a; (b^2 - a^2)/2; (b^3 - a^3)/3 ...]
    //w = inv(A)*b
    //Para este caso com estes pontos o resultado é
    //0.22222222... = 2/9
    //0.33333333... = 3/9
    //0.44444444... = 4/9
    h = (b-a)/n //Número de intervalor
    x = linspace(a,b,n+1)
    
    S=0
    for i=1:n
        w1 = 2/9; x1 = x(i) + h // 1  h é multiplicado pelos pontos dados
        w2 = 3/9; x2 = x(i)+ h/2  // 1/2
        w3 = 4/9; x3 = x(i) + h/4   // 1/4
        //Soma dos w`s será 1
        
        A = (w1*f(x1)+w2*f(x2)+w3*f(x3))*h
        S = S + A
    end
endfunction

function y=f(x)
    y = x.^5
endfunction

function Erro=erro(f,a,b,n)
    Exato = assimet(f,0,1,n*8)
    Erro1 = Exato - assimet(f,0,1,n)
    Erro2 = Exato - assimet(f,0,1,n*2)
    Erro = Erro1/Erro2  //Isto com f => y = x.^5 resultará em 8, ou seja ao multiplicar por 2 
                        //o valor o erro é diminuido por 2^3 gerando um erro de ordem 3
endfunction

//Exemplo: Sejam os nós x [0 0.6 1]. Encontre os pesos Ai da quadratura I = A1*f(x1) + A2 * f(x2) + A3 * f(x3) tal que o erro seja o menor possível
//para integrar f no intervalo 0 a 1

//Primeiro calcula A que neste caso com os valores 0, 0.6 e 1 será "A = [1 1 1; 0 0.6 1; 0 (0.6)^2 1]"
//Depois de calcula b, que no intervalo 0 a 1 será "b = [1 - 0; (1^2 - 0)/2; (1^3 - 0)/3]"
//Por fim calcula-se inv(A)*b e se obterá o vetor w
