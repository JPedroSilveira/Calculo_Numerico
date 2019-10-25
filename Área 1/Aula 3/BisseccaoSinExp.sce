function y=f(x)
    y = sin(x) + exp(x)
endfunction

format(25)
xgrid()

a = -0.57
b = -0.6
l_a = 0
l_b = 0

while a ~= b && a ~= l_a && b ~= l_b
   m = (a+b)/2 
   
   if f(a)*f(m)<0  then
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

disp(erro_abs)
    
