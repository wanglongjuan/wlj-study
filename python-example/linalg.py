# 解线性方程组

import numpy as np
from scipy import linalg


m,n=500, 500
A = np.random.rand(m, n)
B = np.random.rand(m, n)
timeit
x1 = linalg.solve(A, B)
timeit
x2 = np.dot(linalg.inv(A), B)
print(np.allclose(x1, x2))


%timeit('linalg.solve(A, B)')
%timeit('np.dot(linalg.inv(A),B)')
