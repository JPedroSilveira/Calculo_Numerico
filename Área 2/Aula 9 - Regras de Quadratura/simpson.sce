function S = simpson(f,a,b,n)
    h = (b - a)/n
    x = linspace(a,b,n+1)
    S = 0
    A1 = 1/6
    A2 = 4/6
    A3 = 1/6
    for i = 1:n
        x1 = x(i)
        x3 = x(i+1)
        x2 = x1 + h/2
        ds = (A1*f(x1) + A2*f(x2) + A3*f(x3)) * h
        S = S + ds
    end
endfunction

function y = f(x)
    y = exp(x)
endfunction
