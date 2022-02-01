class ventana:
    def __init__(self,ancho,alto,color):
        self.ancho=ancho
        self.alto=alto
        self.color=color
        self.estado="cerrada"
    def abrir(self):
        self.estado="abierta"
    def cerrar(self):
        self.estado="cerrada"
    def mostrar(self):
        print("ancho"+str(": ")+str(self.ancho))
        print("alto"+str(": ")+str(self.alto))
        print("estado"+str(": ")+str(self.estado))
        print("color"+ str(": ")+str(self.color))
    def cambio(self):
        self.color=input("Nuevo color:\n>>> ")
        self.ancho=int(input("Nuevo ancho:\n>>> "))
        self.alto=int(input("Nuevo alto:\n>>> "))
        est=input("Nuevo estado:\n>>> ")
        if est.lower()=="abierta":
            self.estado="abierta"
        elif est.lower()=="cerrada":
            self.estado="cerrada"
        else:
            print("el estado se conservara en: "+str(self.estado))
a=ventana(1000,2000,"blanca")
a.mostrar()
a.cambio()
a.mostrar()
