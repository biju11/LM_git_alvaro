class __init__(object):
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
        print("ancho"+str(self.ancho))
        print("alto"+str(self.alto))
        print("estado"+str(self.estado))
    