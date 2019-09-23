function [k] = metodo_exercicio(A,b,x,tol)
    n = size(A,1)
    xnew = x //Para inicializar o tamanho de xnew com o tamanho de x
    convergiu = %F
    
    k = 1
    while ~convergiu
        xnew = A*x + b
        
        deltax = norm((x-xnew),1)
        if deltax < tol then
            convergiu = %T
        end
        
        x = xnew //atualiza x
        k = k + 1
   end
endfunction

d = [1,0,0]'
x0 = [1,0,0]' 
G = zeros(3,3)

for i = 1:3
    for j = 1:3
        if i == j then
            G(i,j) = 1/2
        elseif abs(i - j) == 1 then
            G(i,j) = 1/4 
        end //A(i,j) = 0, suprimido por A ser matriz de zeros
    end
end

disp(metodo_exercicio(G,d,x0,10^(-2)))
