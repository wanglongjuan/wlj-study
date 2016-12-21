#L(x, n)=\sum_{i=1}^n 1/i (x/(1 + x))^i


def L(x, n):
    s = 0 
    for i in (1, n+1):
        s += (1.0/i)*(x/(1.0+x))**i
    value_of_sum = s
    first_neglected_term = (1.0/(n+1))*(x/(1.0 + x))**(n+1)
    from math import log
    exact_error = log(1+x) - value_of_sum 
    return value_of_sum, first_neglected_term, exact_error

print(value_of_sum)
print(exact_error)
print(first_neglected_term)

