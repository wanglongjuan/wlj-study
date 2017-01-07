"""
this is a program of find the path in f
"""

import os,sys

print(sys.argv)
f = sys.argv[1]  #参数:第0个参数是文件本身, 然后是其它参数

for d in sys.path:
    if os.path.isdir(d):
        if f in os.listdir(d):
            print(d+f)
            print('I got it!')
