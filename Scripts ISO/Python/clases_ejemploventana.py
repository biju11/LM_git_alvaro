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


#sobrecarga de operadores
#sumar ventanas
#comparar ventanas


    def __add__(self,ventana2):
        nancho= self.ancho+ventana2.ancho
        nalto= self.alto+ventana2.alto
        c=self.color
        return ventana(nancho,nalto,c)
    def __gt__(self,ventana2):
        if (self.ancho>ventana2.ancho)and(self.alto>ventana2.alto):
            return True
        else:
            return False
            
        
a=ventana(1000,2000,"blanca")
b=ventana(200,44,"rosa")
a.mostrar()
b.mostrar()
c=a+b
c.mostrar()
if c>a:
    print("C es mayor que A")
else:
    print("A es mayor que C")
if b>c:
    print("B es mayor que C")
else:
    print("C es mayor que B")
if a>b:
    print("A es mayor que B")
else:
    print("B es mayor que A")


