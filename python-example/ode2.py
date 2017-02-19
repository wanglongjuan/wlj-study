import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import odeint

def mass_spring_damper(xu, t, m, k, b, F):
    x, u = xu.tolist()
    dx = u
    du = (F - k*x - b*u)/m
    return dx, du


"""
下面使用odeint对该系统进行求解, 初值为滑块在位移0.0处, 起始速度为 0，
外部控制力恒为1.0.
"""

m, b, k, F = 1.0, 10.0, 20.0, 1.0
init_status = 0.0, 0.0
args = m, k, b, F
t = np.arange(0, 2, 0.01)
sol = odeint(mass_spring_damper, init_status, t, args)

print(sol[:, 0])
print(sol[:, 1])

plt.plot(t, sol[:, 0], 'b', label='u')
plt.plot(t, sol[:, 1], 'g', label='x')
plt.legend(loc='best')
plt.xlabel('t')
plt.grid()
plt.show()

