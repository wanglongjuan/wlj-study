#FD1d_bvp 利用中心差分格式求解两点边值问题
import numpy as np


def f(x):
    f = 16*np.pi*np.pi*np.sin(4*np.pi*x)
    return f

def u(x):
    u = np.sin(4*np.pi*x)
    return u

def FD1d_bvp(N, a, b):

    h = (b-a)/(N-1)
    x = np.linspace(a, b, N).T


#创建差分方程组系数矩阵

    c1 = (-1)/(h**2)
    c2 = 2/(h**2)
    

    g = np.ones(N-1)
    g[:N-2] =c1*g[:N-2]
    g[-1] = 0

    c = np.ones(N-1)
    c[1:N-1] = c1*c[1:N-1]
    c[0] = 0

    d = np.ones(N)
    d[1:N-1] = c2*d[1:N-1]

    A = np.diag(g, -1) + np.diag(d) + np.diag(c,1)


#创建线性方程组右端项


    rhs = f(x)
    rhs[0] = u(x[0])
    rhs[N-1] = u(x[N-1])


#求解上述代数系统
    A = np.linalg.inv(A)
#    print(A)
    U = np.dot(A, rhs)
#    print(U)

    return x, U

#x,U=FD1d_bvp(5,0,1)
#print(U)


def FD1d_error(N,a,b):
    _,U = FD1d_bvp(N,a,b)

    x = np.linspace(a,b,N)
    ue = u(x)

    h = (b-a)/(N-1)

    ee = ue - U

    e0 = h*np.sum(ee**2)

    e1 = np.sum((ee[1:N]-ee[0:N-1])**2)/h

    e1 = e1+e0

    e0 = np.sqrt(e0)
    e1 = np.sqrt(e1)

    emax = np.max(abs(ue - U))
    return e0, e1, emax

e0, e1, emax = FD1d_error(6, 0, 1)
print('L2误差')
print(e0)
print('H1误差')
print(e1)
print('无穷泛数')
print(emax)

