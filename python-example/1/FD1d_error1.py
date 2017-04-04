import numpy as np
from FD1_bvp import f,u,FD1d_bvp


def FD1d_error(N,a,b):
    f = f(x)
    u = u(x)
    U = FD1d_bvp(N,a,b)
    x = np.linspace(a,b,N)
    h = (b-a)/(N-1)

    ue = u(x)
    print(ue)
    ee = ue - U


    e0 = h*np.sum(ee**2)
#    print(e0)

    a = ee[1:N]-ee[:N-1]
    e1 = np.sum(a**2)/h
    e1 = e1 + e0

    e0 = np.sqrt(e0)
    e1 = np.sqrt(e1)

    emax = np.max(abs(ue - U))
    return e0,e1,emax

e0, e1, emax=FD1d_error(6,0,1)
print(e0)
print(e1)
print(emax)

