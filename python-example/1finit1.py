import numpy as np
import matplotlib.pyplot as plt

n=10
x = np.linspace(0,1,n)

y = x**2
z =3*np.sin(2*np.pi*x)
yh = x


fig = plt.figure()
axes1 = fig.add_subplot(1,2,1)
axes2 = fig.add_subplot(1,2,2)

axes1.plot(x, y ,"--r")
axes2.plot(x,z,)
axes1.plot(x,yh,)

plt.show()
