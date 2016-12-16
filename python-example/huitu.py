import numpy as np
import matplotlib.pyplot as plt 


x = np.linspace(0, 10, 10000)
y = np.sin(x)
z = np.cos(x)
k = np.tan(x)

plt.figure(figsize = (10, 12))#调整绘图对象的宽度和高度，单位为英寸
plt.plot(x, y, label = "$sin(x)$", color = 'red', linewidth = 2)
plt.plot(x, z, "b--",label = '$cos(x)$')
plt.plot(x, k, "g *", label =
        "$tan(x)$")#label:给所绘制的曲线一个名字;color:曲线颜色;linewidth:曲线的宽度
plt.xlabel("Times(s)")#设置x 轴的文字
plt.ylabel("Volt")#设置y 轴的文字
plt.title("pyplot first example")
plt.ylim(-1.2, 1.2)#设置y轴的范围
plt.legend()#显示图示
plt.show()#调用plt.show()显示所有的绘图对象

