*** Settings ***

Documentation   Validando Título
Library     SeleniumLibrary



*** Variables ***
${url}=     https://demoqa.com/text-box
${navegador}=       chrome
${name}=   id=userName
${email}=   id=userEmail
${dir1}=   id=currentAddress


*** Test Cases ***
Practica uno validando titulo

    Cargando el navegador
    Validar nombre
    Validar email
    Validar direcciones
    Final






*** Keywords ***
Cargando el navegador
    [Documentation]    Validando el título de la página
    [Tags]  Test_uno
    Open Browser    ${url}      ${navegador}
    maximize browser window
    set selenium implicit wait   10
    set selenium speed   .5
    #Validando el titulo
    title should be    DEMOQA
    Execute javascript      window.scrollTo(0,300)

Validar nombre

    element should be visible    ${name}
    element should be enabled    ${name}
    Input Text    id=userName    Mauricio

Validar email

    element should be visible    ${email}
    element should be enabled    ${email}
    Input Text    id=userEmail    mauricio@example.com

Validar direcciones

    element should be visible    ${dir1}
    element should be enabled    ${dir1}
    Input Text    id=currentAddress    Peten 120
    Input Text    id=permanentAddress    Wisconsin 93

Final

    Click button    id=submit
    sleep  3
    close browser



