x = 0.8
format(25)

for i = 1:4
    x = x - ((exp(2*x) - 11*sqrt(x)) / (2*exp(2*x) - (11/(2*sqrt(x)))))
    disp(x)
end
