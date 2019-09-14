format(25)

function y = f(x)
    y = cos(10*x) - exp(-x)
endfunction

function y = fl(x)
    y = -10*sin(10*x) + exp(-x)
endfunction

//Ver gráfico para dar o chute inicial
x = -1:0.1:10
plot(x,f(x),'r.-')
xgrid

x = 1.5
x = 1.15
x = 0.5

x_ant = x
continuar = 1

for i = 1:10
    x = x - (f(x)/fl(x))
    disp(x)
end
