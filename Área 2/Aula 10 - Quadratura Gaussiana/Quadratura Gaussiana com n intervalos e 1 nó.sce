function S=gaussiana(f,a,b,n)  
    h=(b-a)/n             // n intervalos  
    x=linspace(a,b,n+1)  
 
    w = [2]
    t = [0]
    
    S=0  
    for i=1:n  
        alpha=(x(i+1)-x(i))/2  
        bet  =(x(i+1)+x(i))/2 
         
        x1=alpha*t(1)+bet;  
 
        A =(w(1)*f(x1))* h/2  
        S=S+A  
    end  
endfunction

function y=f(x)
    y = sin(sin(sin(x)))
endfunction
