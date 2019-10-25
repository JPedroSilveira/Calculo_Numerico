function [resultado] = erro_relativo(x, xl)
    resultado = abs((x-xl)/x)
endfunction

//Método de Newton para intercção entre -cos(x-1) e ln(x-1)
x = 1.4

for i = 1:10
    x = x - (log(x-1)+cos(x-1))/((1/(x-1))-sin(x-1))
end

disp(x)
