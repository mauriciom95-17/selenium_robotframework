*** Settings ***

Documentation   Validando Título
Library     SeleniumLibrary





*** Variables ***
${url}=      https://demoqa.com/text-box
${navegador}=    chrome
${t}=  .1

*** Test Cases ***
Practica uno validando titulo
    [Documentation]    Validando el título de la página
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    maximize browser window
    #Validando el titulo
    title should be    DEMOQA
    sleep    ${t}
    ${name}=  Set Variable      id=userName
    ${email}=  Set Variable     id=userEmail
    Element should be visible   ${name}
    Element should be enabled   ${name}
    Input Text    id=userName    Mauricio
    sleep    ${t}
    Element should be visible   ${email}
    Element should be enabled   ${email}
    Input Text    id=userEmail    mauricio@example.com
    sleep    ${t}
    Input Text    id=currentAddress    Peten 120
    sleep    ${t}
    Input Text    id=permanentAddress    Wisconsin 93
    sleep    ${t}
    #Execute javascript      window.scrollTo(0,200)
    Click button    id=submit
    sleep    ${t}
    close browser

Practica dos Validando por Atributo
    [Documentation]    Validando por Atributos
    [Tags]  Test_dos
    Open Browser    ${url}    ${navegador}
    maximize browser window
    #Validando el titulo
    title should be    DEMOQA
    sleep    ${t}
    ${name}=  Set Variable      id=userName
    ${email}=  Set Variable     id=userEmail
    ${dir1}=    Set Variable    id=currentAddress
    Element should be visible   ${name}
    Element should be enabled   ${name}
    Input Text    id=userName    Mauricio
    sleep    ${t}
    Element should be visible   ${email}
    Element should be enabled   ${email}
    Input Text    id=userEmail    mauricio@example.com
    sleep    ${t}
    Input Text    id=currentAddress    Peten 120
    sleep    ${t}

    #Validando el titulo por atributo
    Element attribute value should be    ${dir1}    placeholder     Current Address
    Input Text    id=permanentAddress    Wisconsin 93
    sleep    ${t}

    Click button    id=submit
    sleep    ${t}
    Execute javascript      window.scrollTo(0,200)
    sleep    ${t}
    close browser

Practica tres Validando por Negación
    [Documentation]    Validando por Negación
    [Tags]  Test_tres
    Open Browser    ${url}    ${navegador}
    maximize browser window
    #Validando el titulo
    title should be    DEMOQA
    sleep    ${t}
    ${name}=    Set Variable      id=userName
    ${email}=   Set Variable     id=userEmail
    ${dir1}=    Set Variable    id=currentAddress
    #Element should not be visible   ${name}
    Element should be enabled   ${name}
    Input Text    id=userName    Mauricio
    sleep    ${t}
    Element should be visible   ${email}
    Element should be enabled   ${email}
    Input Text    id=userEmail    mauricio@example.com
    sleep    ${t}
    Input Text    id=currentAddress    Peten 120
    sleep    ${t}

    #Validando el titulo por atributo
    Element attribute value should be    ${dir1}    placeholder     Current Address
    Input Text    id=permanentAddress    Wisconsin 93
    sleep    ${t}

    Click button    id=submit
    sleep    ${t}
    #Execute javascript      window.scrollTo(0,200)
    sleep    ${t}
    close browser



*** Keywords ***
