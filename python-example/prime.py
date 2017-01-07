import numpy as np

is_prime = np.ones((100,), dtype=bool)
is_prime[:2] = 0
N_max = int(np.sqrt(len(is_prime)))
for j in range(2, N_max):
    is_prime[2*j::j] = False
    print(j)
print(is_prime)

