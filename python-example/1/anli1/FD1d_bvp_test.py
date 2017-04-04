import numpy as np
import matplotlib.pyplot as plt


from FD1_bvp import FD1d_bvp
from FD1_error import FD1d_error



N = [6, 11, 21, 41, 81]
a = 0
b = 1
e0 = np.zeros((5,1))
e1 = np.zeros((5, 1))
emax = np.zeros((5, 1))
for i in range(5):
    x, U = FD1d_bvp(N[i], a, b)
    e0[i], e1[i], emax[i] = FD1d_error(N[i],a,b)


print(e0)
print(e1)
print(emax)


