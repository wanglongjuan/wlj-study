#两个随机数之和

import numpy as np
import random 

for x in range(1, 11):
    throw_1 = random.randint(1, 6)
    throw_2 = random.randint(1, 6)
    total = throw_1 + throw_2
    print(total)
    if total == 7:
        print('Seven Thrown!')
    if total == 11:
        print('Eleven Thrown')
    if throw_1 == throw_2:
        print('Double Thrown!')



while not (throw_1 == 6 and throw_2 == 6):
    total = throw_1 + throw_2
    print(total)
    throw_1 = random.randint(1, 6)
    throw_2 = random.randint(1, 6)
    print('Double Six hrown!')
