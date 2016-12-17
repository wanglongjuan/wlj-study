import numpy as np
from numpy.polynomial import Polynomial, Chebyshev
import matplotlib.pyplot as plt


def f(x):
    return 1.0 / (1 + 25 * x**2)


fig = plt.figure()
axes1 = fig.add_subplot(1, 2, 1)
axes2 = fig.add_subplot(1, 2, 2)

n = 11
x1 = np.linspace(-1, 1, n)
x2 = Chebyshev.basis(n).roots()
xd = np.linspace(-1, 1, 200)

c1 = Chebyshev.fit(x1, f(x1), n-1, domain = [-1, 1])
c2 = Chebyshev.fit(x2, f(x2), n-1, domain = [-1, 1])

u1 = np.abs(c1(xd)-f(xd))
u2 = np.abs(c2(xd)-f(xd))


axes1.plot(xd, u1, color = "blue")
axes2.plot(xd, u2, color = "blue")

plt.savefig("1.pdf")
plt.show()

#print(u1)
#print(u2)

