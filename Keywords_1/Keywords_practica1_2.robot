*** Settings ***
Library     SeleniumLibrary
Resource     ../Keywords_1/Funciones.robot


*** Keywords ***
Inicio
        [Documentation]     Practica Uno Intermedio
    [Tags]  Test_uno
    Open Browser    ${url}   ${navegador}
    Maximize Browser Window
    Title should be    Liverpool es parte de mi vida | Liverpool.com.mx
    set selenium implicit wait  10
    set selenium speed   .5 seconds


Bloque uno
    [Arguments]     ${username}    ${password}
    click element   xpath=//span[contains(.,'Iniciar sesión')]
    F_texto     id=username     ${username}
    F_texto      id=password     ${password}
    click button    xpath=//button[@type='submit'][contains(.,'Iniciar sesión')]

Final
    sleep   2
    close browser

