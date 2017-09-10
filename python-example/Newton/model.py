import numpy as np
gamma = 0.1
def myf(x):
    sigma, rho, R = x
    if (2*gamma*rho >max(0, np.pi*gamma - np.pi) and 2*gamma*rho<min(np.pi*gamma, np.pi) ) or (max(0, np.pi - np.pi * sigma) <\
    -2*sigma* rho and  -2*sigma* rho < min(np.pi , 2*np.pi-np.pi*sigma)):
        f_1 = -np.tan((np.pi/2-sigma)*gamma)/np.tan(rho*gamma) - R
        f_2 = - np.tan(rho*gamma)/np.tan(sigma*gamma) - 1/R
        f_3 = - np.tan(sigma*gamma)/np.tan((np.pi/2 - rho)*gamma)
        return f_1, f_2, f_3

def dmyf(x):
    sigma , rho, R = x
    df=-gamma/(np.cos((np.pi/2-sigma)*gamma)**2*np.tan(rho*gamma))-np.tan((np.pi/2-sigma)*gamma)/np.sin(rho*gamma)**2+1+\
    gamma/np.cos(sigma*gamma)**2*np.tan((np.pi/2-rho)*gamma)+np.tan(sigma*gamma)*gamma/np.sin((np.pi/2-rho)*gamma)**2+1/R**2 -\
    gamma/np.cos(sigma*gamma)**2*np.tan((np.pi/2-rho)*gamma)-gamma*np.tan(sigma*rho)/np.sin((np.pi/2-rho)*gamma)**2+1
    return df



