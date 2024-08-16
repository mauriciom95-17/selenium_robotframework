*** Settings ***
Documentation   Switch en navegadores
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://www.google.com.mx/
${navegador}=     chrome

*** Test Cases ***
Demo uno
    [Documentation]   Demo Selectores
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be  Google
    set selenium implicit wait  10
    set selenium speed   1.s

    sleep  2
    close browser

*** Keywords ***