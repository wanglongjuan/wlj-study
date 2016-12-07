import numpy as np
import matplotlib.pyplot as plt


def f(x):
    x = np.array([x1, x2])
    return 2x1*x1+x2*x2

def df(x):
    df = diff(f, x)
    x1 = x0 + lam*d
    df = 0
    return lam


def g(x):
    return np.array([4x1, 2x2])

eps = 0.1
x0 = np.array([1,1])
g = np.array([4, 2])

d = -g
if norm(d)< eps:
    break
else x1 = x0+lam*d 
    f = f(x0 + lam * d)
    print(f)

    
for i in range(n):
    d[i] = - g[i]
    if norm(d[i]) > esp:
        break
    else x[i + 1] = x[i] + lam[i + 1] * d[i]






