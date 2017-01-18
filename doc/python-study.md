###2017-1-4 python 讨论学习总结

. 学习python的优点
. python学习手册
 <up>可以返回以前程序中出现的命令
 %cd or cd 可以改变当前目录
 %timeit 计算时间的长短
 %cpaste 可以从命令或网站粘贴命令, 最后输入"--"结束
 %debug 使用它可以将出现异常的地方进行修改
 alias 别名, 以后自己也可以定义
 列表list
 字符串 str
 元组:表示一个数字的元组时,用形如(1,)表示
 %s,%d,%f表示的是字符型, 整型, 浮点型, 例如: print("x is %d"% x)
 List comprehensions
* 通过 os  模块可以建立, 移除, 查询文件等功能, 用法如下:
例如: [i**2 for i in range(4)]
* 通过 os  模块可以建立, 移除, 查询文件等功能, 用法如下:
import os
os.getcwd()#返回当前运行脚本的目录
os.listdir()#获得目录当中的内容
os.mkdir('filename')#建立一个文件
os.rename('filename','file rename')#更改文件名称
os.rmdir('filename')#移除文件
......

###2017-1-5 python 讨论学习总结
脚本和模块必须遵循规则
当引用模块时, 就有一个模块引用的默认的安装路径, 模块必须位于搜索路径当中
可以在交互模式下建立文件, 并且输入输出
os.path.walk 在目录树中生成文件名列表





2017-1-10
1. 多维数组操作
a.ravel()表示的意义:(1)展平(2)降维
2. view 和 copy:
3. a.transpose():是对轴的变换,对于一维数组的作用没有意义,对于二维数组就是转置;
对于高维数组就是对轴的变换:就是对应的轴的变换, 位置改变
4. 如果被其它东西引用,就不能‘resize’
5. np.argsort(a)对数组a中的数从小到大排序的索引
6. np.argmax(a)对最大值的索引
   np.argmin(a)对最小值的索引
7. a.sort(axis=0 or 1) 按轴排序 
8. np.around(a)离数组最近的偶数
9. 对于一个三位数组a: a[1,:, :]表示第0轴的第一个元素, 然后可以以此类推



















