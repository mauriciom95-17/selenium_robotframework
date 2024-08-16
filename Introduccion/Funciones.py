#Funciones simples
'''
def saludo():
    print("Hola, ¿cómo te llamas?")
    print("Bienvenido")
    a=20
    b=30
    c=a+b
    print("{} + {} = {} ".format(a,b,c))
print("Esto es una función ")
saludo()
'''
# Funciones con parámetros
'''
def saludar():
    print("Hola, como estas?")
def salir():
    print("Hasta luego")
def suma(a,b):
    resltado=a+b
    print("La suma es: "+str(resltado))

saludar()
suma(15,43)
salir()
'''
'''
def datos(nom,ap,am):
    print("Tu nombre es: {} {} {} ".format(nom,ap,am))
datos("Mauricio Alberto","Moreno","Salto")
datos("Alberto","Moreno","Salto")
'''
#Funciones con *args
'''
def suma(a,b):
    c=a+b
    print("La suma es : " +str(c))
suma(7,9)
'''

def suma(*args):
    resultado=0
    for n in args:
        resultado=resultado+n

    print("El resultado es: " +str(resultado))
suma(6,5,43,3,4)


