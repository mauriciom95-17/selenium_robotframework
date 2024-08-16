*** Settings ***

Documentation   Practica
Library     SeleniumLibrary



*** Variables ***
${url}=  https://demoqa.com/text-box
${navegador}=   chrome
${nombre}=  Mauricio
${email}=   mauricio@example.com
${direccion}=  Peten 120
${direccion_permanente}=  Calle 789, 123,

*** Test Cases ***
Practica uno
    [Documentation]    Utilizando las variables en test
    [Tags]  Test_uno
    Open Browser    ${url}     ${navegador}
    maximize browser window
    sleep   1
    Input Text    id=userName    ${nombre}
    sleep   1
    Input Text    id=userEmail    ${email}
    sleep   1
    Input Text    id=currentAddress    ${direccion}
    sleep   1
    Input Text    id=permanentAddress    ${direccion_permanente}
    sleep   1
    Click button    id=submit
    sleep   1
    Execute javascript      window.scrollTo(0,200)
    sleep   1
    close browser


Practica dos
    [Documentation]    Utilizando las variables en test
    [Tags]  Test_dos
    Open Browser    ${url}     ${navegador}
    maximize browser window
    sleep   1
    Input Text    id=userName    Mauricio Alberto
    sleep   1
    Input Text    id=userEmail    ${email}
    sleep   1
    Input Text    id=currentAddress    Wisconsin 93
    sleep   1
    Input Text    id=permanentAddress    ${direccion_permanente}
    sleep   1
    Execute javascript      window.scrollTo(0,200)
    sleep   1
    Click button
    sleep   1
    close browser




*** Keywords ***
