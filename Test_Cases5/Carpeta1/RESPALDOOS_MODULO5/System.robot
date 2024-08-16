*** Settings ***
Documentation   Sistema Operativo
Library     SeleniumLibrary
Library     OperatingSystem
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://demoqa.com/text-box
${navegador}=     chrome

*** Test Cases ***
Crear un Directorio
    [Documentation]   Crear una carpeta
    [Tags]  test_crear_directorio
    operatingsystem.create directory   Carpeta1

Crear un Archivo
    [Documentation]   Crear un archivo
    [Tags]  test_crear_archivo
    operatingsystem.create file  Carpeta1/archivo1.txt
    operatingsystem.create file  Carpeta1/archivo2.txt
    operatingsystem.create file  Carpeta1/archivo3.txt


Copiar un directorio
    [Documentation]   Copiar un directorio
    [Tags]  test_copiar_directorio
    operatingsystem.copy directory   carpeta1   carpeta2

Copiar un archivo
    [Documentation]   Copiar un archivo
    [Tags]  test_copiar_archivo
    operatingsystem.copy file   Base5.robot   carpeta2

Copiar Archivos
    [Documentation]   Copiar un archivos
    [Tags]  test_copiar_archivos
    operatingsystem.copy files   *.robot    Respaldo_Test_Cases5




*** Keywords ***