*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}=   https://demoqa.com/radio-button
${url2}=    https://demoqa.com/checkbox
${navegador}=   chrome
${t}=   3

*** Test Cases ***
#Demo uno
    #[Documentation]  Demo radio button
    #[Tags]      Test_uno
    #Open Browser   ${url}   ${navegador}
    #Maximize browser Window
    #title should be  DEMOQA
    #sleep   ${t}
    #execute javascript      window.scrollTo(0,200)

    #Click element    xpath=//label[contains(.,'Yes')]
    #sleep   ${t}

    #close browser

Demo dos
    [Documentation]  Demo checkbox
    [Tags]      Test_dos
    Open Browser   ${url2}   ${navegador}
    Maximize browser Window
    title should be  DEMOQA
    sleep   ${t}
    execute javascript      window.scrollTo(0,200)

    Click Element    xpath=//span[@class='rct-title'][contains(.,'Home')]
    sleep   ${t}

    close browser
*** Keywords ***
