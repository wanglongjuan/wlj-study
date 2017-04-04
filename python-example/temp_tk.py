#温度换算器

from tkinter import *
from tem_conv import *

class App:

    def __init__(self, master):
        self.t_conv = ScaleAndOffsetConverter('C', 'F', 1.8, 32)

        frame = Frame(master)
        frame.pack()
        Label(frame, text='deg C').grid(row=0, column=0)

#现在添加摄氏温度的文档
        self.c_var = DoubleVar()
#Doublevar(c_var)与文本框联系在一起,通过创建Entry对象时的textvariable参数来指定

        Entry(frame, textvariable = self.c_var).grid(row=0, column=1)
        Label(frame, text='deg F').grid(row=1, column=0)
        self.result_var = DoubleVar() 
#DoubleVar连接标签显示结果
        Label(frame, textvariable=self.result_var).grid(row=1, column=1)

        button = Button(frame, text='Convert', command=self.convert)
        button.grid(row=2, columnspan=2)

    def convert(self):
        c = self.c_var.get()
        self.result_var.set(self.t_conv.convert(c))
        print('Not implemented')


root = Tk()
root.wm_title('Temp Convert')
app = App(root)
root.mainloop()

