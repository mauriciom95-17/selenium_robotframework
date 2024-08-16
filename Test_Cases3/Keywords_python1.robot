*** Settings ***
Documentation   Base 3 robotcorder
Library     SeleniumLibrary
Library     ../Keywords_1/Keywords_Python.py
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://demoqa.com/text-box
${navegador}=     chrome


*** Test Cases ***
Demo uno
     [Documentation]
     [Tags]
     open browser   ${url}   ${navegador}
     maximize browser window
     title should be  DEMOQA
     set selenium implicit wait   10
     set selenium speed   .1s
     Crear Un Folder desde Python
     Crear SubCarpeta desde Python    SubCarpeta_uno

     sleep  2
     close browser

*** Keywords ***
Crear Un Folder desde Python
    Crear_Folder

Crear SubCarpeta desde Python
    [Arguments]  ${nombre_carpeta}
    Crear_SubCarpeta    ${nombre_carpeta}
