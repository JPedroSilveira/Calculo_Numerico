function S=gaussiana(f,a,b,n)  
    h=(b-a)/n             // n intervalos  
    x=linspace(a,b,n+1)  
 
    w = [0.2369268850
         0.4786286704
         0.5688888888
         0.4786286704
         0.2369268850]'
         
    t = [-0.9061798459
         -0.5384693101
          0.0000000000
          0.5384693101
          0.9061798459]'
 
    S=0  
    for i=1:n  
        alpha=(x(i+1)-x(i))/2  
        bet  =(x(i+1)+x(i))/2  
        x1=alpha*t(1)+bet;  
        x2=alpha*t(2)+bet;  
        x3=alpha*t(3)+bet;  
        x4=alpha*t(4)+bet;
        x5=alpha*t(5)+bet;
 
        A =(w(1)*f(x1)+w(2)*f(x2)+w(3)*f(x3)+w(4)*f(x4)+w(5)*f(x5))*h/2 
        S=S+A  
    end  
endfunction
