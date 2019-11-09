// Exemplo de questão:
//Seja u'=cos(u+10) com u(1)=2. Aproxime u(4) usando h=0.01 e o método de Heun.
// Analisando
// u(1) = 2
// No código, u(1) = 2. Sempre será u(1) no código, independentemente do índice na questão.
// aproxime u(4*) -> T = 4*
// chama hein(0.01) no painel do scilab, o último é o resultado

function y=f(t,u)
    y = cos(u+10) // ***
endfunction

function [ultimo]=heun(h) // h = tamanho do intervalo
    u(1) = 2;       // condição inicial ***
    t(1) = 1;       // tempo inicial ***
    T = 4;          // tempo final ***
    
    N = (T-t(1))/h
    
    for n = 1:N
        t(n+1) = t(n)+h;
        util   = u(n)+h*f(t(n),u(n));
        
        F1 = f(t(n), u(n))
        F2 = f(t(n+1), util) // Heun
        u(n+1) = u(n)+(h/2)*(F1+F2)
    end
    
    ultimo = u(N+1);

endfunction


// método de heun: também chamado de método de euler modificado
// calcular um valor intermediario û usando o metodo de euler explicito e utiliza-lo no metodo do trapezio
// un+1 = un + h/2 * (f(tn,un)+f(tn,û)), sendo û = un + h*f(tn,un)
// o erro de truncamento local continua sendo de ordem 2 (ETG de ordem 1)


// PARÂMETROS MODIFICÁVEIS MARCADOS COM ***
