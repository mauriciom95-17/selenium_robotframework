*** Settings ***
Documentation   Demo de Alerts
Library     SeleniumLibrary


*** Variables ***
${url}=     https://testpages.herokuapp.com/styled/alerts/alert-test.html
${navegador}=         chrome

*** Test Cases ***
Demo Uno
    [Documentation]     Prueba de Alerts
    [Tags]  Test_uno
    Open Browser    ${url}   ${navegador}
    Maximize Browser Window
    Title should be    Test Page For JavaScript Alerts
    set selenium implicit wait  10
    set selenium speed   .5 seconds

    click button   id=alertexamples
    handle alert   accept

    Execute javascript    window.scrollTo(0,300)
    click button  id=confirmexample
    handle alert  accept

    click button  id=confirmexample
    handle alert   dismiss

    sleep   2
    click button  id=alertexamples
    alert should be present   I am an alert box!


    sleep   2
    close browser

*** Keywords ***
