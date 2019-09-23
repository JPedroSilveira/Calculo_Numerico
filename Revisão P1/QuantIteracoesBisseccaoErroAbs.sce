a=122.41 //Chute inferior
b=123.23 //Chute superior
primeira = %T
contador = 0

while primeira | abs(a-b) > 0.001
    primeira = %F
    m = (a+b)/2 //Ponto médio
    a = m
    contador = contador + 1
end
contador = contador - 1

disp(abs(a-b))
disp(contador)
