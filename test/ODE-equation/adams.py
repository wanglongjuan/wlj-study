#四阶显式线性多步法


import numpy as np
import matplotlib.pyplot as plt

def Adams(f, u0, T, n):
    uh = np.zeros(1,n+1)
    t = np.zeros(1, n+1)
    uh[0] = u0
    dt = T/n
    F = zerddos(1, 4)
    for i in range(n):
        if i <4:
            k1 = f(uh[i], t[i])
            k2 = f(uh[i]+0.5*dt*k1, t[i]+0.5*dt)
            k3 = f(uh[i]+0.5*dt*k2, t[i]+0.5*dt)
            k4 = f(uh[i]+dt*k3, t[i]+dt)
            uh[i+1] = uh[i] + dt*(k1 + 2*k2 + 2*k3 + k4)/6
        elif i == 4:
            F = f(uh[i-3 : i], t[i-3 : i])
            py = uh[i] + dt*(F*[-9, 37, -59, 55]')/24


               


    return uh, t

def f(u, t):
    return 4*t*np.sqrt(u)


def u(t):
    return (1 + t**2)**2

m=5
n=20
error = np.zeros(m)
h = np.zeros(m)

fig = plt.figure()
axes1 = fig.add_subplot(1, 2, 1)
axes2 = fig.add_subplot(1, 2, 2)

for j in range(m):
    uh, t = Adams(f, 1, 2, n)
    h[j] = 2/n
    n = 2*n
    ue = u(t)
    axes1.plot(t, uh, '--r', label = "$u_"+str(j)+"$") 
    print(uh - ue)
    error[j] =  np.abs(uh - ue).max()

ratio = error[:-1]/error[1:]
order = np.log(ratio)/np.log(2)
axes2.loglog(h, error, 'k-*')
print(error)
print(ratio)
print(order)

axes1.plot(t, ue, label = "$ue = (1 + t^2) ^{0.5}$", color = "blue")
plt.savefig("x1.pdf")
plt.show()

