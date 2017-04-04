#显式算法, 向前差分

import numpy as np


def time_grid(NT):
    T = np.linspace(0, 1, NT+1)
    tau = 1/T
    return T,tau

def space_grid(NS):
    X = np.linspace(0, 1, NS+1)
    h = 1/NS
    return X,h

def u_initial(x):
    u = np.exp(-(x - 0.025)**2/0.01)+0.1*np.sin(20*np.pi*x)
    return u

def u_left(t):
    u = np.zeros(len(t))
    return u

def u_right(t):
    u = np.zeros(len(t))
    return u

def f(x, t):
    f = np.zeros(len(x))
    return f


