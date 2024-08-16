*** Settings ***
Documentation     A test suite with a single test for DEMOQA
...               Created by hats' Robotcorder
Library           SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot

*** Variables ***
${BROWSER}    chrome


*** Test Cases ***
DEMOQA test
    #Open Browser    https://demoqa.com/text-box    ${BROWSER}
    #maximize browser window
    #set selenium speed   .5s
    #F_texto    //input[@id="userName"]    Mauricio Moreno
    #F_texto    //input[@id="userEmail"]    mauricio@gmail.com
    #F_texto    //textarea[@id="currentAddress"]    Dirección 1
    #F_texto    //textarea[@id="permanentAddress"]    dirección 2
    #F_scroll   0   200

    Open Browser    https://demoqa.com/text-box    ${BROWSER}
    F_texto    //input[@id="userName"]      Mauricio
    F_texto    //input[@id="userEmail"]     mauricio@gmail.com
    F_texto    //textarea[@id="currentAddress"]        Dirección 1
    F_texto    //textarea[@id="permanentAddress"]      Dirección 2
    Click Element   //button[@id='submit']

    Close Browser