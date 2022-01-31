print("holamundo")
c=0
opcion = int(input('Introduzca una opcion'))
while opcion != int(0):
    if opcion == 1:
        print('ali esta to perdio')
        opcion = int(input('Introduzca una opcion'))
        c = c+1
    if opcion == 2:
        print(c)
        c = c+1
        opcion = int(input('Introduzca una opcion'))

    if opcion == 3:
        print('en mantenimiento')
        opcion = int(input('Introduzca una opcion'))
        c = c+1
print('el bucle ha terminado, adios')