import numpy as np 

from jacobi import jacobi

A = np.array([[1,2,3],[4,-8,1],[-2,1,5]])
b = np.array([7,-21,15]).T
x0 = np.array([0,0,0]).T
ep = 1e-7
x,k = jacobi(A,b,x0,ep)
print(x)
print(k)
