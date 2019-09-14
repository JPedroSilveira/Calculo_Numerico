x = 4
format(25)

for i = 1:10
    x = x - ((x^7 - 11*x^4 + 11) / (7*x^6-44*x^3))
    disp(x)
end
