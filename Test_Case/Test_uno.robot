*** Settings ***
Documentation   Proyecto de pruebas para demoQA
Library     SeleniumLibrary


*** Variables ***


*** Test Cases ***
Mi primer test
    [Documentation]    Prueba de validación de formulario de contacto
    [Tags]  Test_uno
    Open Browser    https://demoqa.com/text-box     chrome
    maximize browser window
    sleep   2
    Input Text    id=userName    Mauricio
    Input Text    id=userEmail    mauricio@example.com
    Input Text    id=currentAddress    Calle 123, 456,
    Input Text    id=permanentAddress    Calle 789, 123,
    sleep   2
    Click button    id=submit
    sleep   2
    Execute javascript      window.scrollTo(0,200)
    sleep   2
    close browser

Mi segundo test

    [Documentation]    Prueba de validación de formulario de contacto 2
    [Tags]  Test_dos
    Open Browser    https://demoqa.com/text-box     chrome
    maximize browser window
    sleep   1
    Input Text    id=userName    Mauricio
    sleep   1
    Input Text    id=userEmail    mauricio@example.com
    sleep   1
    Input Text    id=currentAddress    Calle 123, 455,
    sleep   1
    Input Text    id=permanentAddress    Calle 789, 122,
    sleep   1
    Click button    id=submit
    sleep   1
    #Execute javascript      window.scrollTo(0,200)
    #sleep   2
    close browser

*** Keywords ***
