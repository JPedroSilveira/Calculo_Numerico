x = 1/3
y = 0.333333

z_exato = 0.00000033333333333333333333333333333333333333333333333333333

z_aproximado = x-y

resultado = digitos_significativos(z_exato,z_aproximado)

format(25)
disp(z_exato)
disp(z_aproximado)
disp(resultado)
disp('Se perdeu 6 digitos de significancia por arredondamento catastrófico')
