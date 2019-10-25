//Exemplo: Sejam os nós x [0 0.6 1]. Encontre os pesos Ai da quadratura I = A1*f(x1) + A2 * f(x2) + A3 * f(x3) tal que o erro seja o menor possível
//para integrar f no intervalo 0 a 1

//Primeiro calcula A que neste caso com os valores 0, 0.6 e 1 será "A = [1 1 1; 0 0.6 1; 0 (0.6)^2 1]"
//Depois de calcula b, que no intervalo 0 a 1 será "b = [1 - 0; (1^2 - 0)/2; (1^3 - 0)/3]"
//Por fim calcula-se inv(A)*b e se obterá o vetor w

function w=calcula_pesos(x,a,b)
    A = []
    v_b = []
    len_x = size(x)(2)
    
    for i = 1:len_x
        A = cat(2,A,[1])
    end
    
    for i = 1:len_x - 1
        A = cat(1,A,x.^i)
    end

    for i = 1:len_x
        v_b = cat(1,v_b,(b^i - a^i)/i)
    end

    w = inv(A)*v_b
endfunction
