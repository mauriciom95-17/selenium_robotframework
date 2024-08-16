*** Settings ***
Documentation   Drag and Drop
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot

Suite Setup   Inicio
Suite Teardown   Salir

*** Variables ***
${url}=      https://demoqa.com/droppable
${navegador}=     chrome

*** Test Cases ***
Demo uno

    drag and drop    id=draggable    id=droppable
    executejavascript   window.scrollTo(0,200)

Demo dos

    drag and drop by offset   id=draggable    200   100
    executejavascript   window.scrollTo(0,200)


*** Keywords ***
Inicio
    [Documentation]   Prueba Drag and Drop
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be  DEMOQA
    set selenium implicit wait  10
    set selenium speed   1.s

Salir
    sleep  2
    close browser