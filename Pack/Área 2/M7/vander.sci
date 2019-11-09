//x = [1 3 4 6]'
//y=sin(x)
x=[1 2 3 4 5]'
y= [0 2 3 2 1]'

n=length(x)

plot(x,y,'ro-'),xgrid

for i=1:n
    for j=1:n
        V(i,j)=x(i)^(j-1)
    end
end

a=inv(V)*y

X=0.65
p=0
for k=1:n
    p=p+a(k)*X.^(k-1)
end
plot(X,p,'b.-')
disp(p)
