*** Settings ***
Documentation       Upload File
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://demoqa.com/automation-practice-form
${navegador}=     chrome

*** Test Cases ***
Demo uno
    [Documentation]   Prueba Upload File
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be  DEMOQA
    set selenium implicit wait  10
    set selenium speed   1.s

    F_scroll   0   500
    choose file    id=uploadPicture     /Users/mauricio/Documents/Pycharm/pythonProject/Curso_Selenium/Test_Cases2/Files/StarWars.jpeg

    sleep  2
    close browser

*** Keywords ***
