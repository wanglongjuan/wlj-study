import numpy as np 
from model import myf , dmyf

def mulNewton(x0, eps):
    # x0 是初始精度
    # eps是迭代精度
    # r为求解的解向量
    # n 为迭代步数
    r = x0 - myf(x0)/dmyf(x0)
    n = 1
    tol = 1
    while tol > eps:
        x0 = r 
        r = x0 - myf(x0)/dmyf(x0)
        tol = np.linalg.norm(r-x0, ord=2)
        #print(tol)
        n = n + 1
        if n > 100000:
           print('Maybe not shoulian')
        else:
            return r, n



def mulSimNewton(x0, eps):
    r = x0 - myf(x0)/dmyf(x0)
    c = dmyf(x0)
    n = 1
    tol = 1
    if tol > eps:
        x0 = r
        r = x0 - myf(x0)/c
        tol = np.linalg.norm(r-x0, ord=2)
        n = n+1
        if n > 100000 :
            print("Maybe bu shoulian")
        else:
            return r, n
    
x0 = [-0.2, 0.33, 3]
r, n = mulNewton(x0, 1.0e-7)
print(r)
print(n)

