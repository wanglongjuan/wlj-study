#隐式欧拉方法



import numpy as np
import matplotlib.pyplot as plt

def YEuler(f, u0, T, n):
    uh = np.zeros(n+1)
    t = np.linspace(0, T, n+1)
    uh[0] = u0
    dt = T/n
    for i in range(n):
        uh[i + 1] = uh[i] + dt*f(uh[i],t[i])
        uh[i+1] = uh[i] + dt*f(uh[i + 1],t[i + 1])
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
#axes2 = fig.add_subplot(1, 2, 2)



for j in range(m):
    uh , t = YEuler(f, 1, 2, n)
    h[j] = 2/n
    n = 2*n
    ue = u(t)
    axes1.plot(t, uh, '--r', label = "$u_"+str(j)+"$") 
#    print(uh - ue) 
    print("真解")
    print(ue)
    print("数值解")
    print(uh)
    error[j] = np.abs(uh - ue).max()

axes1.plot(t, ue, label = "$ue = (1 + t^2) ^{0.5}$", color = "blue")

ratio = error[ :-1]/error[1 : ]
order = np.log(ratio)/np.log(2)
#axes2.loglog(h, error, 'k-*')
print('最大误差')
print(error)
print('误差比')
print(ratio)
print('阶数')
print(order)


plt.savefig("YEuler.pdf")
plt.show()


