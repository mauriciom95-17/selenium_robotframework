*** Settings ***
Library     SeleniumLibrary


*** Variables ***


*** Test Cases ***
[Documentation]   Demo Selectores
    [Tags]  Test_uno
    Open Browser    https://www.liverpool.com.mx/tienda/home    chrome
    Maximize Browser Window
    set selenium implicit wait  20


    #Tiempo para todas las funciones
    set selenium speed   1 seconds

*** Keywords ***
