a=30
b=30
''''
if(a>b):
    print("a es mayor que b "+str(a))
else:
    print("b es mayor que a "+str(b))

nom="Juan"
if(nom=="Juan"):
    print("El nombre es: "+nom)

if(a<=b):
    print("a es menor o igual que b "+str(a))
else:
    print("a es mayor que b "+str(b))
if(a!=b):
    print("a es diferente que b "+str(a))
else:
    print("a es igual que b "+str(b))
'''
a=120
b=120
c=120

if(a>b and a>c):
    print("a es mayor que b y c "+str(a))
elif(b>a and b>c):
    print("b es mayor que a y c "+str(b))
elif(c>a and c>b):
    print("c es mayor que a y b "+str(c))
else:
    print("ninguno se cumple ")
'''

if(a<b or a>b):
    print("{} es menor que {} ó {} es mayor que {}".format(a,b,a,c))
'''