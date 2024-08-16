import os

def Crear_Folder():
    os.mkdir("/Users/mauricio/Documents/Pycharm/pythonProject/Curso_Selenium/DEMO_CARPETA")


def Crear_SubCarpeta(NC):
    os.mkdir("/Users/mauricio/Documents/Pycharm/pythonProject/Curso_Selenium/DEMO_CARPETA/"+NC)

def Concatenar_Nombre(nom,ap,am):
    NombreC="Bienvenidos al curso de RobotFramework: "+nom+" "+ap+" "+am
    return NombreC

def Validar_Nombre(nom):
    if(nom=="Mauricio"):
        return "Bienvenido Mauricio"
    else:
        return "No te conozco quien eres?"
