*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}=     https://www.liverpool.com.mx/tienda/home
${navegador}=         chrome


*** Test Cases ***
Demo uno
    [Documentation]   Practica 3
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    set selenium implicit wait  10

    set selenium speed   .8 seconds

    #Validando un elemento de la pagina
    wait until page contains    Liverpool es parte de mi vida | Liverpool.com.mx
    wait until page does not contain    Liverpooll
    wait until page contains    Mesa de regalos
    wait until page contains    Mi crédito
    wait until page contains    BYD
    wait until page contains    Tiendas
    wait until page contains    Selecciona tu tienda
    Title should be    Liverpool es parte de mi vida | Liverpool.com.mx

    element should be visible   xpath=//span[contains(.,'Categorías')]
    wait until element is visible      xpath=//span[contains(.,'Categorías')]
    wait until element is enabled      xpath=//span[contains(.,'Categorías')]
    click element       xpath=//span[contains(.,'Categorías')]
    wait until page contains element     xpath=//a[contains(@as,'/tienda/electrónica/cat5150041')]
    wait until page does not contain element     xpath=//a[contains(@as,'/tienda/electrónica/cat5141')]
    click element       xpath=//a[contains(@as,'/tienda/electrónica/cat5150041')]
    click element       xpath=//a[contains(.,'Celulares y Telefonía')]
    click element       xpath=(//a[contains(.,'Celulares')])[1]
    click element       xpath=(//a[contains(@id,'sortby')])[2]
    click element       xpath=(//button[@class='dropdown-item'][contains(.,'Mayor precio')])[2]
    Execute javascript  window.scrollTo(0,200)

    #click element       xpath=(//input[contains(@id,'variants.prices.discountPercentage-undefined')])[1]
    #click element       xpath=//span[contains(.,'Iniciar sesión')]
    #wait until element is visible    id=username
    #Input Text        id=username   salto
    #Input Text        id=password       mauri
    #click element       xpath=//button[contains(.,'Iniciar sesión')]
    #wait until page contains   Correo electrónico o contraseña incorrecta

    click element       xpath=//span[contains(.,'Iniciar sesión')]
    click element       xpath=//a[contains(.,'Crear cuenta')]
    Input Text      id=email       mauricio17s950@gmail.com
    Input Text      id=password       ABC123def
    click element       xpath=//button[@type='submit']
    Input Text      id=input-user__name     Miguel
    Input Text      id=input-user__apaterno     Moreno
    Input Text      id=input-user__amaterno     Saltoro
    select from list by label       daySelectorLabel    20
    select from list by label       monthSelectorLabel    Sep
    select from list by label       yearSelectorLabel    1995
    click element       xpath=(//input[contains(@value,'male')])[2]
    Execute javascript  window.scrollTo(0,200)
    click element       xpath=//button[contains(.,'Crear cuenta')]

    sleep   2


    close browser



*** Keywords ***
