#使用雅可比迭代公式

import numpy as np
import matplotlib.pyplot as plt

def jacobi(A, b, x0, ep):
    itmax = 100
    D = np.diag(np.diag(A))
    L = -np.tril(A,-1)
    U = -np.triu(A,1)

    B = np.dot(np.linalg.inv(D),(L + U))
    f = np.dot(np.linalg.inv(D),b)
    x = np.dot(B,x0) + f
    k = 1

    while (np.linalg.norm(x-x0) >= ep)&(k <= itmax):
        x0 = x
        x = np.dot(B,x0) + f
        k = k + 1
    return x,k



