*** Settings ***

Documentation   Validando Título
Library     SeleniumLibrary



*** Variables ***


*** Test Cases ***
Practica uno validando titulo
    [Documentation]    Validando el título de la página
    [Tags]  Test_uno
    Open Browser    https://demoqa.com/text-box     chrome
    maximize browser window
    #Validando el titulo
    title should be    DEMOQA
    sleep   1
    Input Text    id=userName    Mauricio
    sleep   1
    Input Text    id=userEmail    mauricio@example.com
    sleep   1
    Input Text    id=currentAddress    Peten 120
    sleep   1
    Input Text    id=permanentAddress    Wisconsin 93
    sleep   1
    Click button    id=submit
    sleep   1
    Execute javascript      window.scrollTo(0,200)
    sleep   1
    close browser



*** Keywords ***
