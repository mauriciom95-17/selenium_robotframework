*** Settings ***
Documentation   Practica Excel Python
Library     SeleniumLibrary
Library     Files/MasterExcel.py
Resource    ../Keywords_1/Funciones.robot
Resource    Files/MasterExcel_Robot.robot


*** Variables ***
${url}=      https://the-internet.herokuapp.com/login
${navegador}=     chrome

*** Test Cases ***
Demo uno
     [Documentation]    Practica Excel Python

    Inicio
    ${filas}=   Numero de Filas   Hoja 1
    FOR   ${i}   IN RANGE    2    ${filas}+1
          ${usuario}=    Obteniendo Valor Columna    Hoja 1  ${i}   1
          ${clave}=    Obteniendo Valor Columna    Hoja 1  ${i}   2
           Login    ${usuario}    ${clave}
    END

    Final





*** Keywords ***
Inicio
    [Documentation]    Inicio del sistem

    [Tags]  Test uno
    Open Browser  ${url}  ${navegador}
    maximize browser window
    title should be   The Internet
    set selenium implicit wait  10
    #set selenium speed   .1s

Login
    [Documentation]   Login
    [Arguments]   ${u}   ${p}
    F_texto    //input[@id="username"]    ${u}
    F_texto    //input[@id="password"]    ${p}
    click element   //i[contains(.,'Login')]




Final
    [Documentation]   Final de la practica
    sleep  2
    close browser