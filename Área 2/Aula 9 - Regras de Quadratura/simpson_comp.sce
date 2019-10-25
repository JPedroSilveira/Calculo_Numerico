//Erro local h^5
//Erro global h^4
//Se número de intervalos é multiplicado por n o erro é dividido por n^4
//Em outras palavras, se h for multiplicado por n o erro é dividido por n^4
function [y] = simp_comp(f,a,b,n)  
  h = (b-a)/(2*n)  
  x = linspace(a,b,2*n+1)  
  y = f(x(1))  
  for i = 1:n-1  
    y = y + 2*f(x(2*i+1))  
  end  
  for i = 1:n  
    y = y + 4*f(x(2*i))  
  end  
  y = y + f(x(2*n+1))  
  y = h*y/3  
endfunction

function y = f(x)
    y = cos(4*x + 15)
endfunction

