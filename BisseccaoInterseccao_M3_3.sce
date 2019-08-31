function y=f(x)
    y = (x^4) -9 + x
endfunction

format(25)
xgrid()

a = 5
b = 0
l_a = 9999999
l_b = -9999999

while a ~= b && a ~= l_a && b ~= l_b
   m = (a+b)/2 
   
   if f(a)*f(m) < 0  then
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
disp([f(a), f(b)])
disp('Erro absoluto')
disp(erro_abs)
    
    
