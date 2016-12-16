#求最大似然估计

from numpy import random as nr
import numpy as np
import matplotlib.pyplot as plt


def normal_pdf(mean, var, x):
    return 1 / np.sqrt(2 * np.pi * var) * np.exp(-(x - mean) ** 2 / (2 * var))

nr.seed(42)

data = nr.normal(0, 2.0, size=10)#产生10个正态分布的随机数 

mean, var = np.mean(data),np.var(data)#计算其最大似然估计的参数     

var_range = np.linspace(max(var - 4, 0.1), var+4,
        100)#以最大似然估计的方差为中心，产生一组方差值

p = normal_pdf(mean, var_range[:, None],
        data)#用正态分布的概率密度函数计算每个样本、每个方差、每个方差所对应的概率密度
p = np.product(p, axis=1)


plt.plot(var_range, p)
plt.axvline(var, 0, 1, c="r")

plt.savefig("var.pdf")
plt.show()



