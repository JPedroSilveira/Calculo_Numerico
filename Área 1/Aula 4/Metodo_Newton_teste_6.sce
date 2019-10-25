x = 1.30
format(25)

for i = 1:100
    x = x - ((log(x-1) + cos(x-1))/((1/(x-1)) - sin(x-1)))
    disp(x)
end
