import numpy as np


r[i, j, :] = v[i, j, idx[i, j]:idx[i, j]+L]
I, J, K, L = 6, 7, 8, 3
_, _, v = np.mgrid[:I, :J, :K]
idx = np.random.randint(0, K - L,size=(I, J))
idx_k = idx[:, :, None] + np.arange(3)
idx_k.shape
idx_i, idx_j, _ = np.ogrid[:I, :J, :K]
r = v[idx_i, idx_j, idx_k]
i, j = 2,3
