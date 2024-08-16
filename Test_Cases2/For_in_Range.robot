*** Settings ***
Documentation   For in Range
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://www.google.com.mx/
${navegador}=     chrome

*** Test Cases ***
Demo uno
    [Documentation]   Prueba For in Range
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be  Google
    set selenium implicit wait  10
    set selenium speed   1.s

    FOR    ${i}    IN RANGE    0    5
        Log to console   ${i}
        open browser    ${url}  ${navegador}
        maximize browser window
    END

    sleep  2
    close all browsers

*** Keywords ***
