import numpy as np
from prettytable import PrettyTable
import pylab as pl


from FD1_bvp import FD1d_bvp
from FD1_bvp import FD1d_error



N = [6, 11, 21, 41, 81]
a = -1
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


x = PrettyTable(["误差","6","11","21","41","81"])
x.align["e1"] = "1"
x.padding_width = 1
x.add_row(["e1",0.11724062,0.02934854,0.00733572,0.0018338,0.00045844])
x.add_row(["误差比","--",3.99476887,4.0007718,4.00028055,4.0000751])
x.add_row(["e0",0.05347,0.01280202,0.0031663,0.00078946,0.00019723])
x.add_row(["误差比", "--",4.17668553,4.04321389,4.01072799,4.00267712])
x.add_row([" emax",0.05821915,0.01591922,0.00393049,0.00097959,0.00024471])
x.add_row(["误差比", "--",3.65716022,4.05018832,4.01238976,4.00308778])
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
pl.ylim(1.8,2.1)
pl.savefig('1.pdf')

pl.show()































