*** Settings ***
Documentation   Library String
Library     SeleniumLibrary
Library     String
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://demoqa.com/text-box
${navegador}=     chrome

*** Test Cases ***
Convertir texto a mayusculas
    [Documentation]   Library String
    [Tags]  test_may
    ${nom}=   F_pedir_valor   Dame tu nombre
    log to console   ${nom}
    ${noM}=    Convert to upper case   ${nom}
    log to console   ${noM}

Convertir texto a minusculas
    [Documentation]   Library String
    [Tags]  test_min
    ${nom}=   F_pedir_valor   Dame tu nombre
    log to console   ${nom}
    ${noM}=    Convert to lower case   ${nom}
    log to console   ${noM}

Demo de Substraer
    [Documentation]   Subtraer texto
    [Tags]  test_sub
    ${nom}=   F_pedir_valor   Dame tu nombre
    log to console   ${nom}
    ${val}=    Get Substring   ${nom}  3   0
    log to console   ${val}


*** Keywords ***