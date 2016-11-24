#显示欧拉法计算ODE


import numpy as np
import matplotlib.pyplot as plt
import math

def ForwardEuler(f, u0, T, n):
    t = np.zeros(n + 1)
    u = np.zeros(n + 1)
    u[0] = u0
    t[0] = 0
    dt = T / float(n)
    for k in range(n):
        t[k+1] = t[k] + dt
        u[k+1] = u[k] + dt * f( u[k], t[k])
    return u, t

def f(u, t):
    return 4 * t * u **0.5




def exact(fe,ue0, T, n):
    ue = np.zeros(n + 1)
    t = np.zeros(n + 1)
    ue[0] = ue0
    t[0] = 0
    dt = T / float(n)
    for k in range(n):
        t[k + 1] = t[k] + dt
        ue[k+1] = fe(t[k+1])
    return ue, t

def fe(t):
    return (1 + t **2) ** 2
#def a(error):
 #   for i in range(m):
  #      a[i + 1] = error[i ] / error[i + 1] 
   # return a

m=5
error = np.zeros(m)
for j in range(m):
    u, t = ForwardEuler(f, u0 = 1, T = 2, n=20*(j+1))
    ue, t = exact(fe, ue0 = 1, T = 2, n=20*(j+1))
    plt.plot(t, u, label = "$u$", color = 'red', linewidth = 2)
    error[j] =  np.abs(ue - u).max()
    print(error[j]) 
for i in range(4):
    error[i] / error[i + 1]
    print('误差',error[i] / error[i + 1] )
    print('阶数',math.log2(error[i] / error[i + 1] ))
    

plt.plot(t, ue, label = "$ue = (1 + t^2) ^{0.5}$", color = "blue")
plt.xlabel("t")
plt.ylabel("u")
plt.title("ForwardEuler method")
plt.legend()
plt.savefig("x1.pdf")
plt.show()

