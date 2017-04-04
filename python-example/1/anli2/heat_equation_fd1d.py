import numpy as np

from main_test import *

def forward(X, T, U):
    d = 1 - 2*np.ones((N-2, 1))*r
    c = np.ones(N-3)*r

    A = np.diag(c, -1) + np.diag(c, 1) + npp.diag(d)

    for i = 2:M
        RHS = tau*f(X, T[i])


