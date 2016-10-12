import math as mat
def fonk(a):
    return (0.2+25*a-200*mat.pow(a,2)+675*mat.pow(a,3)-900*mat.pow(a,4)+400*mat.pow(a,5))


def fonk2():
    ust_sinir=0.8
    alt_sinir=0.4
    dikdortgen_sayimiz=3
    h=ust_sinir-alt_sinir
    a=0.4
    b=(ust_sinir-alt_sinir)/(0.3)
    fonk_integral=(ust_sinir-alt_sinir)*(fonk(a)+3*fonk(a+(b))+3*fonk((a+(b))+b)+
    fonk(((a+(b))+b))+b)/6
    return fonk_integral


print fonk2()
