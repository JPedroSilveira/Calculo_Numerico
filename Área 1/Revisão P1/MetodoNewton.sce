function y=f(x)
    y = cos(10*x) - exp(-x)
endfunction

function y = fl(x)
    y = -sin(10*x)*10 - exp(-x)*(-1)
endfunction

format(25)

x=1.8
for n=1:10
    x = x - f(x)/fl(x)
end

disp(x)

x=1.5
for n=1:10
    x = x - f(x)/fl(x)
end

disp(x)

x=1.1
for n=1:10
    x = x - f(x)/fl(x)
end

disp(x)
