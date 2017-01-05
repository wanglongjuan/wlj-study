import numpy as np

def fb(n):
    u = np.zeros(n+2)
    u[0] = 1
    u[1] = 1
    for i in range(n):
        u[i+2] = u[i+1] +u[i]
        print(u[i])
    return u[i+2] 

f = fb(5)
