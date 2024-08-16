*** Settings ***
Documentation   Practica Excel uno
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot
Library     DataDriver     /Users/mauricio/Documents/Pycharm/pythonProject/Curso_Selenium/Test_Cases2/Files/Data1.xlsx     sheet_name=Hoja 1

Test Setup  Inicio
Test Teardown  Salir
Test Template  Conectar Excel

*** Variables ***
${url}=      https://demoqa.com/text-box
${navegador}=     chrome

*** Test Cases ***
Prueba uno Excel using       ${name}     ${email}




*** Keywords ***
Inicio
    [Documentation]   Prueba Practica Excel uno
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be  DEMOQA
    set selenium implicit wait  10
    #set selenium speed   .1s

Conectar Excel
    [Documentation]   Conectando con Excel
    [Arguments]     ${name}   ${email}
    F_texto         id=userName         ${name}
    F_texto         id=userEmail        ${email}



Salir
    sleep  2
    close browser