#单位球面上的点 (x,y,z) 满足方程满足 x^2+y^2+z^2=1, 计算二重积分

import numpy as np
from scipy import integrate

def half_circle(x):
    return (1 - x**2)**0.5

def half_sphere(x,y):
    return (1 - x**2 - y**2)**0.5

volume, err = integrate.dblquad(half_sphere, -1, 1,
        lambda x: -half_circle(x),
        lambda x: half_circle(x))

print(volume)
print(err)
