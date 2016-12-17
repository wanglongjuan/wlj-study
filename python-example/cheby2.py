#对g(x) 在100个点切比雪夫节点上分别使用Polynomial和Chebyshev进行插值


import numpy as np
from numpy.polynomial import Polynomial, Chebyshev

def g(x):
    x = (x - 1 ) * 5
    return np.sin(x**2) + np.sin(x)**2

n = 100
x = Chebyshev.basis(n).roots()#使用n阶切比雪夫多项式的根作为取样点
xd = np.linspace(-1, 1, 1000)

p_g = Polynomial.fit(x, g(x), n-1, domain=[-1, 1]) 
c_g = Chebyshev.fit(x, g(x), n-1, domain=[-1, 1])

u1 = abs(g(xd)- p_g(xd)).max()
u2 = abs(g(xd)- c_g(xd)).max()


print("Max Polynomial Error :",u1)

print("Max Chebyshev Error :",u2)

