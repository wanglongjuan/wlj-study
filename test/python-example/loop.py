#sin(x) = x - x^3/3!+x^5/5!-x^7/7!+....

x = 1.2
N = 25
k = 1
s = x
sign = 1.0
import math


while k < N:
    sign = - sign
    k = k + 2
    term = sign*x**k/math.factorial(k)
    s = s + term

print('sin(%g)=%g(approximation with %d term)'% (x, s, N))
