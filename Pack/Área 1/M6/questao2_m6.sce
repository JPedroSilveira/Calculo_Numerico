G = zeros(3,3)
d = [1 0 0]'
x0 = [1 0 0]'
for i=1:3
    for j=1:3
        if i==j then
            G(i,j) = 1/2            
        end
        if abs(i-j) == 1 then
            G(i,j) = 1/4
        end
    end
end
cu = 0
x1 = 0
cont = 0
while cu~=69
    x1 = G*x0+d
    if norm((x0-x1),1) < 10^(-2) then
        cu = 69
    end
    x0 = x1
    cont = cont + 1
end

disp(cont)
