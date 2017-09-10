import numpy as np

class cofficients:
    def __init__(self, sigma, gamma, rho):
        self.sigma = sigma
        self.gamma = gamma
        self.rho = rho

    def mu(self, theata):
        if 0 <= theta <= np.pi/2:
            u0 = np.cos((np.pi/2 - sigma)*gamma)*np.cos((theta - np.pi/2 + rho)*gamma)
        elif np.pi/2 <= theta <= np.pi:
            u0 = np.cos(rho*gamma)*np.cos((theta - np.pi + sigma)*gamma)
        elif np.pi <= theta <= 3*np.pi/2:
            u0 = np.cos(sigma*gamma)*np.cos((theta - np.pi - rho)*gamma)
        elif 3*np.pi/2 <= theta <= 2*np.pi:
            u0 = np.cos((np.pi/2 - rho)*gamma)*np.cos((theta - 3*np.pi/2 - sigma)*gamma)
        return u0

    def solution(self, p):
        """The exact solution
        """
        x = p[:, 0]
        y= p[:, 1]
        pi = np.pi
        r = (x**2 + y**2)**(1/2)
        theta = np.arctan2(y, x)
        theta = (theta >= 0)*theta + (theta < 0)*(theta + 2*pi)
        u = r**gamma*mu(theta)
        return u


    def gradient(self, p):
        """the gradient of the exact solution
        """
        sin = np.sin 
        cos = np.cos
        x = p[:, 0]
        y = p[:, 1]
        theta = np.arctan2(y, x)
        theta = (theta >= 0)*theta + (theta < 0)*(theta + 2*pi)
        r = x**2 + y**2
        r0 = r**(gamma/2)
        rx = gamma*x*(x**2+y**2)**(gamma/2)/r
        ry = gamma*y*(x**2+y**2)**(gamma/2)/r 
        val = np.zeros((len(x), 2), dtype=p.dtype)
        if 0 <= theta <= pi/2:
            val[:, 0] =r0*gamma*y*sin(gamma*(rho + theta - \
                pi/2))cos(gamma*(sigma+pi/2))/r+rx*(cos((pi/2 -sigma)*gamma)*cos((theta - pi/2 + rho)*gamma))
            val[:, 1] = ry*(cos(pi/2 -sigma)*gamma)*cos((theta - pi/2 + rho)*gamma)) - r0*gamma*sin(gamma*(rho + theta -
                    pi/2))*cos(gamma*(sigma+pi/2))*x/r
        elif pi/2 <= theta <= pi:
            val[:, 0] = r0*gamma*y*sin(gamma*(sigma+theta-pi))*cos(gamma*rho)/r+rx*cos(rho*gamma)*cos((theta - pi + sigma)*gamma)
            val[:, 1] = -r0*sin(gamma*(sigma+theta-pi))*cos(gamma*rho)*x/r + ry*cos(rho*gamma)*cos((theta - pi + sigma)*gamma)
        elif pi <= theta <= 3*pi/2:
            val[:, 0] = r0*gamma*y*sin(gamma*(-rho+theta-pi))*cos(gamma*sigma)/r + rx*cos(sigma*gamma)*cos((theta - pi - rho)*gamma)
            val[:, 1] = -r0*gamma*sin(gamma*(-rho+theta-pi))*cos(gamma*sigma)*x/r + ry*cos(sigma*gamma)*cos((theta - pi - rho)*gamma)
        elif 3*pi/2 <= theta <= 2*pi:
            val[:, 0] = r0*gamma*y*sin(gamma*(-sigma+theta-3*pi/2))*cos(gamma*(-rho+pi/2))/r + rx*cos((pi/2 - rho)*gamma)*cos((theta - \
                   3*pi/2 - sigma)*gamma)
            val[:, 1] = -r0*gamma*sin(gamma*(-sigma+theta-3*pi/2))*cos(gamma*(-rho + pi/2))*x/r
        return val



    def dirichlet(self, p):
        """Dirichlet boundary condition 
        """
        return self.solution(p)

    def source(self, p):
        """the right hand side of Possion equation
        INPUT:
            p: array object, N*2
        """
        rhs = np.zeros(p.shape[0]) 
        return rhs

