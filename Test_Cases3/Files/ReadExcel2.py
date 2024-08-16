import openpyxl

archivo=openpyxl.load_workbook("/Users/mauricio/Documents/Pycharm/pythonProject/Curso_Selenium/Test_Cases3/Files/Data2.xlsx")

ac=archivo["Hoja 1"]

esc=ac["D2"].value="Paso"
esc=ac["D3"].value="Paso"
esc=ac["D4"].value="Paso"


archivo.save("/Users/mauricio/Documents/Pycharm/pythonProject/Curso_Selenium/Test_Cases3/Files/Data2.xlsx")





