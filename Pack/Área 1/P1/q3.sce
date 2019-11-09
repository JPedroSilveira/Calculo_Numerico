function y= f(x)
    y =  x^4 * log(1 + 4*x)
endfunction

function y= fl(x) //derivada de f(x)
    y =  numderivative(f,x) // faz a derivada automaticamente
endfunction

x = 3
// para chegar no resultado, multiplicamos f'(x) pelo erro na entrada
disp(fl(x) * 7 * 10^-6)


