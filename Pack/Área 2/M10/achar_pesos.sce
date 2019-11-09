// Como usar?
// Na questão você recebe o intervalo e os nós/pontos
// Ex: find_w(0,1,[0.1 0.9 1]), exemplo de questão embaixo do código

function W = find_w(a, b, nodos)
    n_nodos = length(nodos)
    
    mat = zeros(n_nodos, n_nodos)
    mat_b = zeros(n_nodos)
    
    for i = 0:(n_nodos-1)
        mat_b(i+1) = (b^(i+1) - a^(i+1))/(i+1)
        
        for j = 1:n_nodos
            mat((i+1),j) = nodos(j)^i
        end
    end
    mat_b = mat_b
    disp(mat)
    disp(mat_b)
    W = inv(mat) * mat_b
endfunction

// Exemplo de uso:
// ....................
// Sejam os nós x=[0.1, 0.9, 1]. Encontre os pesos A_i da quadratura I=A_1f(x_1)+A_2f(x_2)+A_3f(x_3) 
// tal que o erro seja o menor possível para aproximar a integral de f no intervalo 0 a 1.
// Forneça como resposta A_2.
// ....................
// Solução:
// find_w(0,1,[0.1 0.9 1])
// só pegar o segundo elemento do resultado
