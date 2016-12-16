#计算-pi/2~pi/2区间与sin(x)函数最接近的多项式的系数



import numpy as np

x = np.linspace(-np.pi / 2, np.pi / 2, 1000)
y = np.sin(x)

for i in [3, 7, 9]:
    a = np.polyfit(x, y, i)
    error = np.abs(np.polyval(a, x) -
            y)#使用polyval()计算多项式函数的值,并计算目标函数差的绝对值
    print("degree{}:{}".format(i, a))
    print("max error of order %d:"%i ,np.max(error))


