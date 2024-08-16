*** Settings ***
Documentation   Practica Cinco funciones click
Library     SeleniumLibrary




*** Variables ***
${url}=     https://www.liverpool.com.mx/tienda/home
${navegador}=         chrome

*** Test Cases ***
Demo Uno
    [Documentation]     Demo practica Cinco funciones click
    [Tags]  Test_uno
    Open Browser    ${url}   ${navegador}
    Maximize Browser Window
    Title should be    Liverpool es parte de mi vida | Liverpool.com.mx
    set selenium implicit wait  10
    set selenium speed   .5 seconds

    #click por coordenadas
    wait until page contains element   xpath=//span[contains(.,'Categorías')]
    click element    xpath=//span[contains(.,'Categorías')]
    wait until page contains element     xpath=(//a[contains(.,'Hombre')])[1]
    click element    xpath=(//a[contains(.,'Hombre')])[1]
    click image    //img[contains(@alt,'Tenis y sneakers | Hombre | Liverpool')]
    click image    //img[contains(@id,'img_0')]
    click element    xpath=(//a[contains(.,'Zapatos')])[1]
    execute javascript      window.scrollTo(0,250)
    click image   //img[@src='https://assetspwa.liverpool.com.mx/assets/slotsimages/lp/cat5040005.jpg']
    click element    xpath=(//input[contains(@id,'variants.prices.discountPercentage-undefined')])[1]
    click image    //img[@alt='Bota Michel Domit de piel bovino para hombre']
    input text      id=mainSearchbar        balones de futbol
    click element    xpath=(//i[contains(@class,'icon-zoom')])[1]
    click image      //img[@alt='Balón Nike Pitch - Fa23 para fútbol']
    input text      id=mainSearchbar        balones de futbol
    click element    xpath=(//i[contains(@class,'icon-zoom')])[1]
    click element    (//input[contains(@id,'variants.prices.discountPercentage-undefined')])[1]
    click element    xpath=//span[contains(.,'Iniciar sesión')]
    input text      id=username     hola
    input text      id=password     cr7Real7
    click button   xpath=//button[@type='submit'][contains(.,'Iniciar sesión')]
    wait until page contains   Correo electrónico o contraseña incorrecta
    input text      id=username     saltoalberto2@gmail.com
    input text      id=password     cr7Real7
    click button   xpath=//button[@type='submit'][contains(.,'Iniciar sesión')]
    #Input Text      id=input-user__name     Alberto
    #Input Text      id=input-user__apaterno     Moreno
    #Input Text      id=input-user__amaterno     Salto
    #select from list by label       daySelectorLabel    21
    #select from list by label       monthSelectorLabel    Sep
    #select from list by label       yearSelectorLabel    1995
    #click element       xpath=(//input[contains(@value,'male')])[2]
    #Execute javascript  window.scrollTo(0,200)
    #click element       xpath=//button[contains(.,'Crear cuenta')]
    #Input Text      id=phone    7294908843
    #click button    xpath=//button[@type='submit'][contains(.,'Continuar')]
    sleep  4





    sleep   2
    close browser

*** Keywords ***
