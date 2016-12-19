from math import sin, cos
from scipy import optimize


def f(x):
    #f(x)是计算方程组误差的函数,x参数是一组可能的解.fsolve()在调用f(x)时，传递给f()是一个数组
    x0, x1, x2 = x.tolist()
    return [
            5*x1 + 3,
            4*x0*x0 - 2*sin(x1*x2),
            x1*x2 - 1.5
            ] 

def j(x):
    x0, x1, x2 = x.tolist()
    return [
            [0, 5, 0],
            [8*x0, -2*x2*cos(x1*x2), -2*x1*cos(x1*x2)],
            [0, x2, x1]
            ]

result1 = optimize.fsolve(f, [1, 1,
    1])#调用fsolve()时,传递计算误差函数f()以及未知数的初始值
print(result1)
print(f(result1))

result2 = optimize.fsolve(f, [1, 1, 1], fprime=j)
print(result2)
print(f(result2))

