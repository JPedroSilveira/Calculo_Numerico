function S = trapezio(f,a,b,n)
    h = (b - a)/n
    x = linspace(a,b,n+1)
    S = 0
    A1 = 1/2
    A2 = 1/2
    
    for i = 1:n
        x1 = x(i)
        x2 = x(i+1)
        ds = (A1*f(x1)+A2*f(x2))*h
        S = S + ds
    end
endfunction

function y = f(x)
    y = exp(x)
endfunction
