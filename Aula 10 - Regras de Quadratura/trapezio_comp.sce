//Erro local h^3
//Erro global h^2
//Se número de intervalos é multiplicado por n o erro é dividido por n^2
//Em outras palavras, se h for multiplicado por n o erro é dividido por n^2
function [y] = trap_comp(f,a,b,n)  
  h = (b-a)/n  
  x = linspace(a,b,n+1)  
  y = h*(f(x(1)) + f(x(n+1)))/2  
  for i = 2:n  
    y = y + h*f(x(i))  
  end  
endfunction

function y = f(x)
    y = x^3 - 7*x
endfunction
