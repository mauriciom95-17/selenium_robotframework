*** Settings ***
Documentation   Valores GET
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://demoqa.com/text-box
${navegador}=     chrome

*** Test Cases ***
Demo get Text
    [Documentation]   Valores con GET Text
    [Tags]  test_text
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be   DEMOQA
    set selenium implicit wait  10
    #set selenium speed   .5s

    ${valor}=   Get Text    //h1[contains(.,'Text Box')]
    log to console  ${valor}
    should be equal  ${valor}   Text Box

    sleep  2
    close browser

Demo get Title
    [Documentation]   Valores con GET Title
    [Tags]  test_title
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be   DEMOQA
    set selenium implicit wait  10
    #set selenium speed   .5s

    ${valor}=   Get Title
    log to console  ${valor}
    Should be equal  ${valor}   DEMOQA

    sleep  2
    close browser

Demo get Atribute
    [Documentation]   Valores con GET Atribute
    [Tags]  test_atribute
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be   DEMOQA
    set selenium implicit wait  10
    #set selenium speed   .5s

    ${valor}=   Get Element Attribute   userName    placeholder
    log to console  ${valor}
    Should be equal  ${valor}   Full Name
    IF  '${valor}' == "Full Name"
          F_texto   userName    Juan
    ELSE
          log to console    No Es El Campo
    END

    sleep  2
    close browser

*** Keywords ***