*** Settings ***
Documentation   For Exit
Library     SeleniumLibrary
Library     String


*** Keywords ***

Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://www.google.com.mx/
${navegador}=     chrome

@{ROBOTS}=   Bender    Terminator    Robocopt   RoborFrameworks
@{num}=      1   2   3   4   5   6   7   8


*** Test Cases ***
Demo uno
    [Documentation]   Prueba For Exit
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be  Google
    set selenium implicit wait  10
    set selenium speed   1.s

    FOR    ${items}    IN   @{ROBOTS}
        Exit for loop if   $items=='Robocopt'
        log to console   ${items}
        ${numbers}=       Generate Random String   5    1234568765432
        Log To Console   ${numbers}

    END

    sleep  1
    close all browsers

*** Keywords ***
