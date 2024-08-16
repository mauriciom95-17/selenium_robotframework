*** Settings ***
Documentation   Dialogs
Library     SeleniumLibrary
Library     Dialogs
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://demoqa.com/text-box
${navegador}=     chrome


*** Test Cases ***
Creando cuadros de dialogo
    [Documentation]   Prueba de dialogs
    [Tags]  test_uno
    ${sel_navegador}=     Get Selection From User    Escoje tu navegador?       chrome    firefox   safari
    Open Browser    ${url}    ${sel_navegador}
    Maximize Browser Window
    title should be   DEMOQA
    set selenium implicit wait  10
    #set selenium speed   .5s
    F_texto    //input[@id='userName']   Mauricio
    F_texto    //input[contains(@id,'userEmail')]    mauricio@gmail.com
    Execute manual step  Quieres continuar?
    F_texto    //textarea[contains(@id,'currentAddress')]   wisconsin 93
    Pause Execution
    F_texto    //textarea[@id='permanentAddress']   peten 120
    Click element   //button[contains(@id,'submit')]
    sleep  2
    close browser

Demo dos
    [Documentation]   Dialogs.Get Selection From User
    [Tags]  test_dialogs2
     ${sel_navegador}=     Get Selection From User    Escoje tu navegador?       chrome    firefox   safari
    Open Browser    ${url}    ${sel_navegador}
    Maximize Browser Window
    title should be   DEMOQA
    set selenium implicit wait  10
    #set selenium speed   .5s

    ${nom}    Get Value From User     Dame tu nombre
    ${email}    Get Value From User     Dame tu email
    F_texto    //input[@id='userName']   ${nom}
    F_texto    //input[contains(@id,'userEmail')]    ${email}

    sleep  2
    close browser

*** Keywords ***