*** Settings ***
Documentation     A test suite with a single test for DEMOQA
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10
Resource    ../Keywords_1/Funciones.robot

*** Variables ***
${BROWSER}    chrome
${SLEEP}    .5

*** Test Cases ***
DEMOQA test
    Open Browser    https://demoqa.com/text-box    ${BROWSER}
    maximize browser window
    Sleep    ${SLEEP}
    Input Text    //input[@id="userName"]    Erika
    Sleep    ${SLEEP}
    Input Text    //input[@id="userEmail"]    erika@gmail.com
    Sleep    ${SLEEP}
    Input Text    //textarea[@id="currentAddress"]    Dirección 1
    Sleep    ${SLEEP}
    Input Text    //textarea[@id="permanentAddress"]    Dirección 2
    Sleep    ${SLEEP}
    F_scroll    0  300
    Click Element    //button[@id='submit']
    Sleep    ${SLEEP}

    Close Browser