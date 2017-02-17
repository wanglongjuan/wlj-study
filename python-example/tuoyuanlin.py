#椭圆拟合

import numpy as np
from scipy import linalg


np.random.seed(42)
t = np.random.uniform(0, 2*np.pi, 60)


alpha = 0.4
a = 0.5
b = 1.0
x = 1.0 + a*np.cos(t)*np.cos(alpha) - b*np.sin(t)*np.sin(alpha)
y = 1.0 + a*np.cos(t)*np.sin(alpha) - b*np.sin(t)*np.cos(alpha)
x += np.random.normal(0, 0.05, size=len(x))
y += np.random.normal(0, 0.05, size=len(y))


D = np.c_[x**2, x*y, x, y, np.ones_like(x)]
A = np.dot(D.T, D)
C = np.zeros((6,1))
C[[0, 1, 2],[2,1,0]] = 2, -1, 2
evalues, evectors = linalg.eig(A, C)
evectors = np.real(evectors)
err = np.mean(np.dot(D, evectors)**2, 0)
p = evectors[:,np.argmin(err)]
print(p)

#这个程序错误在与A与C不是同类型的shape不相同

