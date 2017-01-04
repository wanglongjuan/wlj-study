###2017-1-4 python 讨论学习总结

1. 学习python的优点
2. python学习手册
* <UP>可以返回以前程序中出现的命令
* %cd or cd 可以改变当前目录
* %timeit 计算时间的长短
* %cpaste 可以从命令或网站粘贴命令, 最后输入"--"结束
* %debug 使用它可以将出现异常的地方进行修改
* alias 别名, 以后自己也可以定义
* 列表list
* 字符串 str
* 元组:表示一个数字的元组时,用形如(1,)表示
* %s,%d,%f表示的是字符型, 整型, 浮点型, 例如: print("x is %d"% x)
* List comprehensions
例如: [i**2 for i in range(4)]
* 通过 os  模块可以建立, 移除, 查询文件等功能, 用法如下:
import os
os.getcwd()#返回当前运行脚本的目录
os.listdir()#获得目录当中的内容
os.mkdir('filename')#建立一个文件
os.rename('filename','file rename')#更改文件名称
os.rmdir('filename')#移除文件
......


