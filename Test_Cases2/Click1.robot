*** Settings ***
Documentation   Opciones de click
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://demoqa.com/buttons
${navegador}=     chrome

*** Test Cases ***
Demo uno
    [Documentation]   Opciones de click
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be    DEMOQA
    set selenium implicit wait  10
    set selenium speed   .3s

    double click element   doubleClickBtn
    open context menu      rightClickBtn

    execute javascript   window.scrollTo(0,200)

    sleep  2
    close browser

*** Keywords ***
