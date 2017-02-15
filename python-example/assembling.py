#尝试组装一维刚度矩阵和载荷向量.

import numpy as np
import matplotlib.pyplot as plt


# Assembly of mass matrix
def MassAssembler1D(x):
    n = len(x) - 1
    M = zeros(n+1, n+1)
    for i in range(1,n):
        h = x(i+1) - x(i)
        M(i, i) = M(i, i)+h/3
        M(i, i+1) = M(i, i+1) + h/6
        M(i+1, i) = M(i+1, i) + h/6
        M(i+1, i+1) = M(i+1,i+1) + h/3
    return M

# Assembly of load vector
def LoadAssembler1D(x, f):
    n = len(x) - 1
    M = zeros(n+1, n+1)
    for i in range(1, n):
        h = x(i+1) - x(i)
        b(i) = b(i) + f(x(i))*h/2
        b(i+1) = b(i+1) + f(x(i+1))*h/2
    return b

f(x) = x*sin(x)

