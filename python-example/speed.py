#最速下降法 f(x)=100(x1*x1-x2*x2)+(x1-1)^2


import numpy as np
import matplotlib.pyplot as plt

def fsxsteep(f, e, a, b):
    x1 = a
    x2 = b
    Q = fsxhesse(f, x1, x2)
    x0 = np.array([x1, x2]).reshape(2, 1)
    fx1 = diff(f, x1)
    fx2 = diff(f, x2)
    g = np.array([fx1, fx2]).reshape(2, 1)
    
    return 100(x1*x1 - x2*x2) + (x1 - 1) * (x1 - 1)

def 
