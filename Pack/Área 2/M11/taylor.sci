function y=f(t, u)
y=cos(u+t)
endfunction

function y=ft(t, u) //derivada da função
y=-sin(u+t)
endfunction

function y=ftt(t, u) // derivada da derivada da função
y=-cos(t+u)
endfunction

function [ultimo]=taylor(N) // N = número de intervalos, não tamanho do intervalo. Siga as instruções do código de Euler.
    u(1)=0.49; //cond inicial ***
    t(1)=1; // índice inicial ***
    T = 2 // índice final ***
    h=(T-t(1))/N
    for n=1:N
    t(n+1)=t(n)+h;
    F=f(t(n),u(n));
    Ft=ft(t(n),u(n))
    Ftt=ftt(t(n),u(n))
    u(n+1)=u(n)+h*F+(h^2/2)*Ft+(h^3/6)*Ftt
    end
    ultimo=u(N+1);
    plot(t,u,'r.-');xgrid
endfunction


