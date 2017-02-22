#使用 ode 类 和odeint()相同, 也需要计算各个状态的导数的函数

import numpy as np
import matplotlib.pyplot as plt

from scipy.integrate import odeint
from scipy.integrate import ode

"""
这里使用MassSpringDamper类的方法f()计算状态点处的导数.
注意该方法的参数顺序和odeint()所需要的函数的不同.
"""

def mass_spring_damper(xu, t, m, k, b, F):                                      
    x, u = xu.tolist()                                                          
    dx = u                                                                      
    du = (F - k*x - b*u)/m                                                      
    return dx, du           
                                                                                
m, b, k, F = 1.0, 10.0, 20.0, 1.0                                               
init_status = 0.0, 0.0                                                          
args = m, k, b, F                                                               
t = np.arange(0, 2, 0.01)                                                       
result = odeint(mass_spring_damper, init_status, t, args)    


class MassSpringDmper(object):


    def _init_(self, m, k, b, F):
        self.m, self.k, self.b, self.F = m, k, b, F


    def f(self, t, xu):
        x, u = xu.tolist()
        dx = u
        du = (self.F - self.k*x - self.b*u)/self.m
        return [dx, du]

m, b, k, F = 1.0, 10.0, 20.0, 1.0
system = MassSpringDmper(m=m, k=k, b=b, F=F)
init_status = 0.0, 0.0
dt = 0.01

r = ode(system.f)
r.set_integrator('vode', method="bdf")
r.set_initial_value(init_status, 0)

t=[]
result2 = [init_status]
while r.successful() and r.t + dt < 2:
    r.integrate(r.t + dt)
    t.append(r.t)
    result2.append(r.y)

result2 = np.array(result2)
np.allclose(result, result2)











