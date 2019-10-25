A = [6 1
     -1 4]

b = [1 2]'

x1 = [2 0]'

jacobi(A,b,x1,-1,10)

disp(resolve(A,b))
