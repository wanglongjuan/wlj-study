import numpy as np
import matplotlib.pyplot as plt
from prettytable import PrettyTable

import pylab as pl


from FD1_bvp import FD1d_bvp
from FD1_bvp import FD1d_error



N = [6, 11, 21, 41, 81]
a = 0
b = 1
e0 = np.zeros((5,1))
e1 = np.zeros((5, 1))
emax = np.zeros((5, 1))
print('L2泛数')
for i in range(5):
    x, U = FD1d_bvp(N[i], a, b)
    e0[i],_,_= FD1d_error(N[i],a,b)
    print(e0[i])

ratio0 = e0[:-1]/e0[1:]
order0 = np.log(ratio0)/np.log(2)
print('误差比')
print(ratio0)

print('H1泛数')
for i in range(5):
    x, U = FD1d_bvp(N[i], a, b)
    _,e1[i],_= FD1d_error(N[i],a,b)
    print(e1[i])
    
ratio1 = e1[:-1]/e1[1:]
order1 = np.log(ratio1)/np.log(2)

print('误差比')
print(ratio1)

print('无穷泛数')
for i in range(5):
    x, U = FD1d_bvp(N[i], a, b)
    _,_,emax[i]= FD1d_error(N[i],a,b)
    print(emax[i])

ratiomax = emax[:-1]/emax[1:]
ordermax = np.log(ratiomax)/np.log(2)
print('误差比')
print(ratiomax)

x = PrettyTable(["泛数","6","11","21","41","81"])
x.align["e1"] = "1"
x.padding_width = 1
x.add_row(["e1",5.04348483,1.1902668,0.2942694,0.07337604,0.01833227])
x.add_row(["误差比","--", 5.2276541,4.25151651,4.06009657,4.0148588])
x.add_row(["e0",0.52739602,0.10088579,0.02372937,0.00584453,0.00145573])
x.add_row(["误差比", "--",4.23727256,4.04482013,4.01042915,4.00256049])
x.add_row([" emax",0.70934608,0.13569109,0.03191593,0.00826542,0.00205871])
x.add_row(["误差比", "--", 5.2276541,4.25151651,3.8613813,4.0148588])
print(x)

a1 = order0
a2 = order1
a3 = ordermax

M = [11,21,41,81]

pl.xlabel("number")
pl.ylabel("order")

pl.plot(M, a1,'og-',label="L2")  # use pylab to plot x and y
pl.legend() 
pl.plot(M, a3, '*r-',label="max")
pl.legend()
pl.plot(M,a2,"ob-",label="H1")
pl.legend()
pl.xlim(0,91)
pl.ylim(1.8,2.8)

plt.show()































