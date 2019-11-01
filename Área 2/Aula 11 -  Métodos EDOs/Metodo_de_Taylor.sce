//Método de Taylor
//Utiliza das expansões da série de taylor, onde os dois primeiros elementos são o método de Euler, o resto do somatório é o erro
//Para obter um método melhor basta calcular mais termos da série
//Método é explicito e possue uma boa zona de estabilidade
//Problema: é necessário a f e a derivada de f

/* EXEMPLO DE ORDEM 3
function y = f(t,u)
    y = u*t
endfunction

//Deriva em relação a u e em relação a t pois u depende de t
//u'*t + t'*u -> Regra da multiplicação
function y=ft(t,u)
    y = (u*t)*t + u
endfunction

//Para ordem 3
function y=ftt(t,u)
    y = ((u*t)*t + u)*t + 2*u*t
endfunction
*/

function y = f(t,u)
    y = cos(u + t)
endfunction

function y = ft(t,u)
    y = -sin(u + t)*(cos(u + t) + 1)
endfunction

function [ultimo] = taylor(h)
    u(1) = 0.84    //Condição Inicial
    t(1) = 1
    T = 2          //Valor de u(x) que se deseja calcular
    N = (T-t(1))/h
    
    for n=1:N
        t(n+1) = t(n) + h
        F = f(t(n),u(n))
        Ft = ft(t(n),u(n))
        u(n+1) = u(n) + h*F + (h^2/2)*Ft //Para ordem 3: + (h^3/3!)*Ftt ...
    end
    
    ultimo = u(N+1);
endfunction
