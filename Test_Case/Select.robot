*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}=     https://www.liverpool.com.mx/tienda/home
${navegador}=         chrome
${t}=   1

*** Test Cases ***
Demo uno
    [Documentation]   Demo Selectores
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    #title should be
    #select from list by label
    element should be visible   xpath=//span[contains(.,'Categorías')]
    sleep   ${t}
    click element       xpath=//span[contains(.,'Categorías')]
    sleep   ${t}
    click element       xpath=//a[contains(@as,'/tienda/electrónica/cat5150041')]
    sleep   ${t}
    click element       xpath=//a[contains(.,'Celulares y Telefonía')]
    sleep   ${t}
    click element       xpath=(//a[contains(.,'Celulares')])[1]
    sleep   ${t}
    click element       xpath=(//a[contains(@id,'sortby')])[2]
    sleep   2
    click element       xpath=(//button[@class='dropdown-item'][contains(.,'Mayor precio')])[2]
    sleep   2
    click element       xpath=(//input[contains(@id,'variants.prices.discountPercentage-undefined')])[1]
    sleep   2
    close browser


*** Keywords ***
