function y=f(x)
    y = sin(x)
endfunction

function y=g(x)
    y = x^4 - 2*x + 1
endfunction

format(25)
xgrid()

a = 1.25
b = 0.32
l_a = 0
l_b = 0

while a ~= b && a ~= l_a && b ~= l_b
   m = (a+b)/2 
   
   dif_a = f(a) - g(a)
   dif_m = f(m) - g(m)
   
   if dif_a*dif_m < 0  then
       l_b = b
       b = m
       plot(b, f(b), '*r')
   else 
       l_a = a
       a = m
       plot(a, f(a), '*b')
   end
   disp([a,b]) 
end

erro_abs=(b-a)/2

disp('X')
disp([a, b])
disp('Y')
disp([g(a), g(b)])
disp('Erro absoluto')
disp(erro_abs)
    
