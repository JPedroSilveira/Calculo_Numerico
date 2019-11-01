//Método de Heun (Método de Euler Modificado)
//Estima o u para evitar implicidade, ele é um método explicito
//O erro de truncamento ETL = O(h^3) e ETG = O(h^2) mantendo a mesma ordem 2 do método Trapezoidal
function y = f(t,u)
    y = cos(u + t)
endfunction

function [ultimo]=heun(h)
    u(1) = 0.84        //Condições iniciais
    t(1) = 1           //Valor x do u(x) inicial dado
    T = 2 //Valor de u(x) que se deseja calcular
    N = (T-t(1))/h
    
    for n = 1:N
        t(n+1) = t(n) + h
        util = u(n) + h*f(t(n),u(n))
        F1 = f(t(n),u(n))
        F2 = f(t(n+1),util)
        u(n+1) = u(n) + (h/2)*(F1+F2)
    end
    
    ultimo = u(N+1);
endfunction
