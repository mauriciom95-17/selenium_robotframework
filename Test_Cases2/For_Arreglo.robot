*** Settings ***
Documentation   For por Arreglo
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://www.google.com.mx/
${navegador}=     chrome

@{ROBOTS}=   Bender    Terminator    Robocopt   RoborFrameworks
@{num}=      1   2   3   4   5   6   7   8


*** Test Cases ***
Demo uno
    [Documentation]   Prueba For por Arreglo
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be  Google
    set selenium implicit wait  10
    set selenium speed   1.s

    FOR    ${items}    IN   @{num}
    log to console   ${items}
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window

    END

    sleep  1
    close all browsers

*** Keywords ***
