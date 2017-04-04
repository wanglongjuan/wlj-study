#使用Gauss-Seidel迭代

import numpy as np

def gauss(A,b,x0,ep):
    itmax = 30
    D = np.diag(np.diag(A))
    L = -np.tril(A,-1)
    U = -np.triu(A,1)

    ld = np.linalg.inv(D-L)
    B = np.dot(ld, U)
    f = np.dot(ld, b)

    x = np.dot(B, x0) + f
    k = 0 


    while (np.linalg.norm(x - x0) >= ep)&(k < itmax):
        x0 = x
        x = np.dot(B, x0) + f
        k =k + 1
        print(k)
        print(x)
    return x,k
