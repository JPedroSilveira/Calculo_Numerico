x = -0.1
format(25)

for i = 1:5
    temp = sqrt(x^2 + 1)
    x = x - ((cos(temp) - sin(x)) / ((-1*sin(temp)*(x/temp)) - cos(x)))
    disp(x)
end
