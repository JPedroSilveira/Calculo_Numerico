function S=gaussiana(f,a,b,n)  
    h=(b-a)/n             // n intervalos  
    x=linspace(a,b,n+1)  
 
    w = [((18 + sqrt(30))/36)
         ((18 + sqrt(30))/36)
         ((18 - sqrt(30))/36)
         ((18 - sqrt(30))/36)]'
         
    t = [sqrt((3 - 2*sqrt(6/5))/7)
         -sqrt((3 - 2*sqrt(6/5))/7)
         sqrt((3 + 2*sqrt(6/5))/7)
         -sqrt((3 + 2*sqrt(6/5))/7)]'
 
    S=0  
    for i=1:n  
        alpha=(x(i+1)-x(i))/2  
        bet  =(x(i+1)+x(i))/2  
        x1=alpha*t(1)+bet;  
        x2=alpha*t(2)+bet;  
        x3=alpha*t(3)+bet;  
        x4=alpha*t(4)+bet;
 
        A =(w(1)*f(x1)+w(2)*f(x2)+w(3)*f(x3)+w(4)*f(x4))*h/2  
        S=S+A  
    end  
endfunction

function y=f(x)
    y = sin(8*x)
endfunction

