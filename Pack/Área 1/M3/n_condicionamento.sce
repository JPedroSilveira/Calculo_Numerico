function y= f(x)
    y =  sin(8*x)
endfunction

function y= fl(x)
    y =  numderivative(f,x) // faz a derivada automaticamente
endfunction

x = 10

ncond = abs((x * fl(x))/f(x))
disp(ncond)
