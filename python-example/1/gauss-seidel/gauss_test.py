import numpy as np 

from gauss import gauss

A = np.array([[10,-2,-1],[-2,10,-1],[-1,-2,5]])
b = np.array([3,15,10]).T
x0 = np.array([0,0,0]).T
ep = 1e-4
x,k = gauss(A,b,x0,ep)
print(x)
print(k)
