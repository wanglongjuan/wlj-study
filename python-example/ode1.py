#计算ode 的例子

import numpy as np
from scipy.integrate import odeint

def lorenz(w, t, p, r, b):
    #给出位置矢量w和三个参数 p,r,b
    #计算出 dx/dt, dy/dt, dz/dt 的值
    x, y, z = w.tolist()
    #直接与lorenz 的计算公式对应
    return p*(y-x), x*(r-z)-y, x*y-b*z

t = np.arange(0, 30, 0.02)#创建时间点
#调用 ode 对 lorenz 进行求解, 用两个不同的初值

tack1 = odeint(lorenz, (0.0, 1.00, 0.0), t, args=(10.0, 28.0, 3.0))
tack2 = odeint(lorenz, (0.0, 1.01, 0.0), t, args=(10.0, 28.0, 3.0))

print(lorenz)
