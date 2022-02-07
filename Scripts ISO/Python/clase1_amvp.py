import random


class coche:
    def __init__(self,ancho,largo,color,estado,marca,modelo):
        self.ancho=int(ancho)
        self.largo=int(largo)
        self.color=color
        self.estado=estado
        self.marca=marca
        self.modelo=modelo

    def diseña(self):
        self.ancho=int(input("Introduzca un ancho en centimetros: "))
        self.largo=int(input("Introduzca un largo en centimetros: "))
        self.color=(input("introduzca un color: "))
        self.estado="parado"
        self.marca=(input("Introduzca la Marca del coche: "))
        self.modelo=(input("Introduzca el Modelo del coche: "))
        self.serial=int(random.randint(1,9999999999999999))

    def arrancar(self):
        if (self.estado) == "parado":
            self.estado="arrancado"
            print("el coche arrancará")
        else:
            print("El coche ya se encuentra arrancado")

    def parar(self):
        if (self.estado) == "arrancado":
            print("El coche se apagará")
            self.estado="parado"
        else:
            print("el coche ya esta parado")

    def specs(self):
        print("[+]  Ancho: ",self.ancho)
        print("[+]  Largo: ",self.largo)
        print("[+]  Color: ",self.color)
        print("[+]  La marca del vehiculo es: ",self.marca)
        print("[+]  El modelo del vehiculo es: ",self.modelo)
        print("[+]  Numero de Bastidor: ",self.serial)


a = coche(1,1,"Sin Pintura","parado","Default","Por Defecto")
#a.arrancar()
#a.diseña()
#a.specs()
b=a
b.diseña()
b.specs()
