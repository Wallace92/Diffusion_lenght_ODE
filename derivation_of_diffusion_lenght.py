import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import odeint

# function that returns dy/dt
def model(y,t):
    k = 0.3
    dydt = -k * y
    return dydt

# initial condition
# y0 = 5

# time points
# t = np.linspace(0,20)

# solve ODE
# y = odeint(model,y0,t)

def first_order(dt):
    t = np.arange(0, 20, dt)
    k = 0.3
    y = np.zeros(len(t))

    y[0] = 5
    for i in range(1, len(t)):
       y[i] = - k* y[i - 1] * dt + y[i-1]

    return t, y

def diffusion_lenght(dt):
    p0 = 10 ** 13  # w stanie ustalonym (rownowagowym)

    L = 1
    x = np.linspace(L / 10, L * 5, 50)
    p = np.zeros(len(x))

    p[0] = 10 ** 14
    p[40] = p0

    for i in range(1, len(x)):

        # p[i] = (((p[i-1] -p0) / L)  * dt ** 2) + 2 * p[i - 1] - p[i - 2]
        # p[i] =  (2* p[i-1]- p[i-2] - (p0 * dt ** 2) / L) / (1 - (dt ** 2) / L)
        p[i] = -2 * p[i - 1] + p[i-2] * (((dt ** 2) / L)-1) - p0 * dt ** 2 / L
    print(p)
    return x, p


# plt.axis([0, 2, 7* 10 ** 12, 10 ** 14])
# plt.show()
# t1, y2 = first_order(0.01)
# plt.plot(t1, y2)
# plt.plot(t, 5*np.exp(-0.3*t))
# plt.xlabel('time')
# plt.ylabel('y(t)')
# plt.show()
L = 1
x = np.linspace(L / 10, L * 5, 50)
# print(x)
p = 10 ** 13+[10 ** 14-10 ** 13]*np.exp(-x / (L))
# print(p)

plt.plot(x, p, '*', ms = 10)
plt.grid(True)
plt.show()

