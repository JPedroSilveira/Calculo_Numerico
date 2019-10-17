function S = somas_de_riemann_a_esquerda(f,a,b,n)
    h = (b - a)/n
    S = 0
    
    for i = 1:n
        xi = a + (i - 1) * h
        S = S + f(xi)*h
    end
endfunction

function S = somas_de_riemann_a_direita(f,a,b,n)
    h = (b - a)/n
    S = 0
    
    for i = 1:n
        xi = a + (i * h)
        S = S + f(xi)*h
    end
endfunction

function S = somas_de_riemann_ponto_medio(f,a,b,n)
    h = (b - a)/n
    S = 0
    
    for i = 1:n
        xi = a + (i - 1)*h
        xi2 = a + (i * h)
        e = (xi + xi2)/2
        S = S + f(e)*h
    end
endfunction


function y = f(x)
    y = cos(x)
endfunction
