import numpy as np
import matplotlib.pyplot as plt

#均匀剖分区间[a, b]，得到网格x(i) = a + (i-1)*(b-a)/(N-1)
def FD1d_bvp(N, f, a, b, u):
    x = np.zeros((N, 1))
    for i in N:
        x[i] = a + (i-1)*(b-a)/(N-1)

#创建线性差分方程组系数矩阵
    A = np.zeros((N, N))


#对应的第一个方程
    A[0, 0] = 1.0


#对应第2---N个方程-1
    for i in np.arange(1, N-1):
        xm = x[i]
        A[i, i-1] = -1.0/((x[i] - x[i-1])*(x[i+1] - x[i]))
        A[i, i] = 2.0 / ((x[i]-x[i-1])*(x[i+1]-x[i]))
        A[i, i+1] = -1.0/((x[i+1]-x[i])*x[i+1]-x[i])


#对应最后一个方程
    A[N-1, N-1] = 1.0


    rhs = np.zeros((N, 1))
    rhs[0] = u[x[0]]
    for i in np.arange(1, N-1):
        xm = x[i]
        fm = f[xm]
        rhs[i] = fm

    rhs[N-1, N-1] = u[x[N-1]]


#求解上述代数系统
    U = np.zeros((N, 1))

#三对角方程组的追赶法
#取三对角元

    D = np.diag(A)
    M = np.diag(A, -1)
    P = np.diag(A, 1)


    Ld = np.zeros((N, 1))
    Ud = np.zeros((N-1, 1))
    Ld[0] = D[1]
    for i in np.arange(N-1):
        Ud[i] = P[i]/Ld[i]
        Ld[i+1] = D[i+1] - M[i] * Ud[i]

    UT = np.zeros((N, 1))
    UT[0] = rhs[0] / D[0]
    for i in np.arange(1, N-1):
         UT[i] = (rhs[i] - M[i-1]*UT[i-1])/Ld[i]


    ue = np.zeros(N, 1)
    for i in np.arange(N):
        ue[i] = u[x[i]]


    ee = ue - U
    e = max(np.abs(ue-U))
    e0  = 0
    e1  = 0
    h = (b-a) / (N-1)
    for i in np.arange(N):
        e0 = e0 + (ee[i+1] - ee[i])/(ee[i+1]-ee[i])/h

    e1 = e1 + e0
    np.sqrt(e0)
    np.aqrt(e1)
    







