#把华氏温度转化为摄氏温度

C = int(input())
F = int(input())
#raw_input()是输入数字等其它, 但是它的类型的字符串型, 加上int就变为整型

C = 5/(9*(F - 32))

print(C)



