*** Settings ***
Documentation   Switch en Navegadore
Library     SeleniumLibrary




*** Variables ***
${url}=     https://demoqa.com/
${navegador}=         chrome

*** Test Cases ***
Demo Uno
    [Documentation]     Switch en navegador
    [Tags]  Test_uno
    Open Browser    ${url}   ${navegador}
    Maximize Browser Window
    Title should be  DEMOQA
    set selenium implicit wait  10
    set selenium speed   .5 seconds

    switch browser  1
    ${titulo1}=     get title
    log to console     ${titulo1}

    sleep  2
    close browser

    Open Browser     https://www.liverpool.com.mx/tienda/    ${navegador}
    maximize browser window
    Title should be  Liverpool es parte de mi vida | Liverpool.com.mx
    switch browser  2
    ${titulo2}=     get title
    log to console     ${titulo2}





    sleep   2
    close browser

*** Keywords ***
