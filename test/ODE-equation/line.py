#显式欧拉法计算ODE


import numpy as np
import matplotlib.pyplot as plt

def FEuler(f, u0, T, n):
    uh = np.zeros(n+1)
    t = np.linspace(0, T, n+1)
    uh[0] = u0
    dt = T/n
    for i in range(n):
        k1 = 4*t[i]*np.sqrt(uh[i])
        k2 = 4*(t[i]+h*0.5)*np.sqrt((uh[i]+dt*0.5*k1))
        k3 = 4*(t[i]+h*0.5)*np.sqrt((uh[i]+dt*0.5*k2))
        k4 = 4*(t[i]+h)*np.sqrt(uh[i]+dt*k3)             
        uh[i+1] = uh[i] + dt*(k1 + 2*k2 + 2*k3 + k4)/6 
        if i < 3:
            print(uh[0],uh[1],uh[2],uh[3])
        else:
            uh[i+1] =uh[i]+dt/24*(55*4*t[i]*np.sqrt(uh[i])-59*4*t[i-1]*np.sqrt(uh[i-1])i+dt/24*(55*4*t[i]*np.sqrt(uh[i])-59*4*t[i-1]*np.sqrt(uh[i-1])
            ue[i] =(1+t[i]*t[i])*(1+t[i]*t[i]) 
            uh[i+1] = uh[i] + dt*f(uh[i], t[i])
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
    uh, t = FEuler(f, 1, 2, n)
    h[j] = 2/n
    n = 2*n
    ue = u(t)
    axes1.plot(t, uh, '--r', label = "$u_"+str(j)+"$") 
    print(uh - ue)
    error[j] =  np.abs(uh - ue).max()

ratio = error[:-1]/error[1:]
order = np.log(ratio)/np.log(2)
axes2.plot(, order, 'k-*')
print(error)
print(ratio)
print(order)

axes1.plot(t, ue, label = "$ue = (1 + t^2) ^{0.5}$", color = "blue")
plt.title('1')
plt.savefig("x1.pdf")
plt.show()

