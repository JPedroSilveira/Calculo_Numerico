x = -3.8
format(25)

for i = 1:3
    esp1 = cos(sqrt(x^2 + 1)) - sin(x)
    esp2 = ((-1*sin(sqrt(x^2 + 1)) * x)/(sqrt(x^2 + 1))) - cos(x)
    x = x - (esp1/esp2)
    disp(x)
end
