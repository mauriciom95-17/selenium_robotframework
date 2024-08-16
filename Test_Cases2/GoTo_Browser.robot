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
    sleep  3



    Go To   https://www.liverpool.com.mx/tienda/
    go back






    sleep   2
    close browser

*** Keywords ***
