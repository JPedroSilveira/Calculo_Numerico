//Primeiro define a função y = f(x)
function y=f(x)
    y = nthroot(x^3 * (-1) + 1,3) - sqrt(x)
endfunction

//Método da Bissecção 
a=0.7 //Chute inferior
b=0.8 //Chute superior

//Iteração do método da bisseção
for i = 1:100 
    m = (a+b)/2 //Ponto médio
    if(f(a)*f(m)<0) then
        b = m
    else 
        a = m
    end
end

disp(m)
