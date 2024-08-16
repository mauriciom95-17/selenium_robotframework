#input

print("Cual es tu nombre: ")
nom=input()

print("Cual es tu ap:")
ap=input()

print("Cual es tu am:")
am=input()

print("Cual es tu edad:")
edad=input()

print("Dame el valor de A:")
a=input()
a=int(a)

print("Dame el valor de B:")
b=input()
b=int(b)

suma =a+b

print("Tu nombre y tu edad es: {} {} {} {} ".format(nom,ap, am,edad))
print("La suma de {} + {} = {}".format(a,b,suma))