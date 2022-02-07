class coche:
    def __init__(self,ancho,largo,color,estado,marca,modelo):
        self.ancho=ancho
        self.largo=largo
        self.color=color
        self.estado=estado
        self.marca=marca
        self.modelo=modelo

    def diseña(self):
        ancho=(input("Introduzca un ancho en centimetros: "))
        largo=(input("Introduzca un largo en centimetros: "))
        color=(input("introduzca un color: "))
        estado="parado"
        marca=(input("Introduzca la Marca del coche: "))
        modelo=(input("Introduzca el Modelo del coche: "))

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
#a = coche(2000,3500,"Negro","parado","Land Rover","Evoque")
#a.arrancar()
#a.diseña()
#a.specs()
b=coche(ancho,largo,color,estado,marca,modelo)
b.diseña()
b.specs()