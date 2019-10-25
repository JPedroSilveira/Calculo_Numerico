x = 1
format(25)

for i = 1:10
    x = x - ((x*sin(x) - 1) / (sin(x) + x*cos(x)))
    disp(x)
end
