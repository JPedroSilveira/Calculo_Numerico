s=0
C = 0
M = eye(295,295)

for k=1:295;
  s=s+M(k,1:k)*M(1:k,k);
  C = C + (k - 1)
end
