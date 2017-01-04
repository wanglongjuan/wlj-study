def print_b():
    "prints b"
    print('b')

def print_a():
    "prints a"
    print('a')

    #模块在import 下可执行
print_b()


if __name__ == '__main__':
#只有模块在run 下可执行
    print_a()


