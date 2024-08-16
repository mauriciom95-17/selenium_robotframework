*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}=     https://www.liverpool.com.mx/tienda/home
${navegador}=         chrome


*** Test Cases ***
Demo uno
    [Documentation]   Demo Selectores
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    #Función para la espera de los elementos
    #set selenium timeout   5
    ${tiempo}=      get selenium implicit wait
    set selenium implicit wait  20


    #Tiempo para todas las funciones
    set selenium speed   1 seconds
    element should be visible   xpath=//span[contains(.,'Categorías')]

    click element       xpath=//span[contains(.,'Categorías')]

    click element       xpath=//a[contains(@as,'/tienda/electrónica/cat5150041')]

    click element       xpath=//a[contains(.,'Celulares y Telefonía')]

    click element       xpath=(//a[contains(.,'Celulares')])[1]

    click element       xpath=(//a[contains(@id,'sortby')])[2]

    click element       xpath=(//button[@class='dropdown-item'][contains(.,'Mayor precio')])[2]

    click element       xpath=(//input[contains(@id,'variants.prices.discountPercentage-undefined')])[1]

    click element       xpath=//span[contains(.,'Iniciar sesión')]


    close browser



*** Keywords ***
