*** Settings ***
Documentation   Base 5
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://www.google.com.mx/
${navegador}=     chrome

*** Test Cases ***
Demo uno
    [Documentation]   Prueba de dialogs
    [Tags]  test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be   DEMOQA
    set selenium implicit wait  10
    #set selenium speed   .5s

    sleep  2
    close browser

*** Keywords ***