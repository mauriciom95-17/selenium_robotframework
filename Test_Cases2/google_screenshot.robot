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
    Open Browser    ${url}      ${navegador}
    title should be   Google
    Maximize Browser Window
    set selenium implicit wait  10
    set selenium speed   .5 seconds

    F_texto   xpath=//textarea[@title='Buscar']     Clima en cdmx
    log to console    Escribiendo el campo ciudad
    F_enter       xpath=//textarea[@title='Buscar']
    log to console    Dando enter
    F_foto_pagina    clima3.png
    log to console    Sacando primera pantalla
    F_foto_selector   xpath=//div[contains(@id,'wc')]    clima4.png
    log to console     Pantalla selector

    sleep   2
    close browser

*** Keywords ***
