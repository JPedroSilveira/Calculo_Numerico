function y= f(x)
    y =  cos(13*x)
endfunction

function y= fl(x)
    y =  -13 * sin(13*x)//numderivative(f,x) // faz a derivada automaticamente; o resultado geralmente é bom, mas uma derivada manual é mais precisa
endfunction

x = 141

ncond = abs((x * fl(x))/f(x))
disp(ncond)
