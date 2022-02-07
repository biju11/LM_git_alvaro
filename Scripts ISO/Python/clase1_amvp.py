class coche:
    def __init__(self,ancho,largo,color,estado):
        self.ancho=ancho
        self.largo=largo
        self.color=color
        self.estado=estado

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
        print("Ancho: ",self.ancho)
        print("Largo: ",self.largo)
        print("Color: ",self.color)

a = coche(2000,3500,"Negro","parado")
a.arrancar()
a.specs()