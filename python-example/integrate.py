#球的体积的数值积分

import numpy as np
import matplotlib.pyplot as plt 

from scipy import integrate



def half_circle(x):
    return (1-x**2)**0.5

N=10000
x = np.linspace(-1, 1, N)
dx = x[1] - x[0]
y = half_circle(x)
z = 2 * dx * np.sum(y)
print(z)


m = np.trapz(y, x) * 2 #面积的2倍

'''
用np.trapz()计算半圆上的各点所构成的多边形面积
'''
print(m)


pi_half, err = integrate.quad(half_circle, -1, 1)
print(pi_half * 2)
print(err)


plt.plot(x, y, "r--")

plt.xlabel("$x$")
plt.ylabel("$varible$")
plt.title("pyplot half circle")

plt.show()


