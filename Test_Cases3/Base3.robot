*** Settings ***
Documentation   Base 3 robotcorder
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://www.google.com.mx/
${navegador}=     chrome

*** Test Cases ***
Demo uno
    Open Browser    https://www.liverpool.com.mx/tienda/home?gad_source=1&gclid=CjwKCAjw_Na1BhAlEiwAM-dm7KG1-ERpp-Ic0gGvX_4lryviE6Ff15h9NdVdvUWt9Dap6fIoOtb-pRoCUsMQAvD_BwE&gclsrc=aw.ds    ${navegador}
    Maximize Browser Window
    set selenium implicit wait  10
    set selenium speed   1s
    Click Element    //span[@class="a-header__strongLink nav-desktop-menu-action pr-3 pb-3"]
    Click Element    //a[@href="/tienda/hombre/cat5020003"]
    Click Element    //img[contains(@alt,'Tenis y sneakers | Hombre | Liverpool')]
    Click Element    (//img[@alt='Tenis Tommy Hilfiger de piel para hombre'])[1]
    Input Text    //input[@id="mainSearchbar"]    balones de futbol
    Click Element    (//i[contains(@class,'icon-zoom')])[1]
    Click Element    //input[@id="variants.prices.discountPercentage-undefined"]

    sleep  2
    close browser

*** Keywords ***