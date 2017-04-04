s = "hello"

for x in range(len(s)):
    print(s[x])

for x in "s":
    print(s)

d = {1:111,2:222,3:333,4:4444,5:5555}

for x in d:
    print(x)
    print(d[x])

d.items()
print(d.items())


for k,v in d.items():
    print("d.items")
    print(k)
    print(v)
else:
    print("ending")


import time 
for x in range(300):
    if x == 3:
        break
    print(x)
    time.sleep(1)
else:
    print("ending")


q = 1
x = 1
while True:
    print("hello")
    x = input("please input something , q for quit:")
    if x == q:
        break

