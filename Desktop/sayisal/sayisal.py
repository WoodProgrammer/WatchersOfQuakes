

import matplotlib.pyplot as plt
import math as mat

def fonk(a):
    return (0.2+25*a-200*mat.pow(a,2)+675*mat.pow(a,3)-900*mat.pow(a,4)+400*mat.pow(a,5))

y=0
x_deg=[0]
y_deg=[0]
for i in range(10):
    x_deg.append(y)
    y_deg.append(fonk(y))
    y+=.1
plt.plot(x_deg[1:1000000],y_deg[1:1000000])
plt.show()
