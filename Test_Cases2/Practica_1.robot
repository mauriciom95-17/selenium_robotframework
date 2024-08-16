*** Settings ***
Documentation   Practica Uno Intermedio
Library     SeleniumLibrary




*** Variables ***
${url}=     https://www.liverpool.com.mx/tienda/home
${navegador}=         chrome

*** Test Cases ***
Practica Uno Keywords

    Inicio
    Bloque uno      mauriciom17s95@gmail.com        cr7real7
    Final




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
    input text      id=username     ${username}
    input text      id=password     ${password}
    click button    xpath=//button[@type='submit'][contains(.,'Iniciar sesión')]

Final
    sleep   2
    close browser