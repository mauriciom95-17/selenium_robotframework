*** Settings ***
Documentation   Practica Upload
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://demoqa.com/automation-practice-form
${navegador}=     chrome

*** Test Cases ***
Demo uno
    Inicio
    Bloque_uno
    Bloque_dos
    Bloque_tres
    Bloque_cuatro
    Bloque_cinco

    Salir





*** Keywords ***
Inicio
    [Documentation]   Prueba Practica Upload
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be  DEMOQA
    set selenium implicit wait  10
    set selenium speed   .1s

Bloque_uno
    [Documentation]  Bloque uno
    F_scroll   0   300
    F_texto    id=firstName     Mauricio
    F_texto    id=lastName      Moreno
    F_texto    id=userEmail     mauricio@gmail.com

Bloque_dos
    [Documentation]   Bloque dos
    click element    xpath=//label[contains(.,'Male')]
    F_texto          id=userNumber       7221133033
    click element    id=dateOfBirthInput
    click element    xpath=//select[contains(@class,'react-datepicker__month-select')]
    Select From List By Value    xpath=//select[@class="react-datepicker__month-select"]     8
    Select From List By Value    xpath=//select[@class="react-datepicker__year-select"]      1995
    click element    xpath=//div[@class='react-datepicker__day react-datepicker__day--021'][contains(.,'21')]



Bloque_tres
    [Documentation]  Bloque tres
    F_scroll      0  250
    sleep  1
    Press Keys    xpath=//div[contains(@class,'subjects-auto-complete__value-container subjects-auto-complete__value-container--is-multi css-1hwfws3')]     English
    F_click_xy    xpath=//div[contains(@class,'subjects-auto-complete__value-container subjects-auto-complete__value-container--is-multi css-1hwfws3')]     0    50

Bloque_cuatro
    [Documentation]  Bloque cuatro
    click element    xpath=//label[@for='hobbies-checkbox-1'][contains(.,'Sports')]
    choose file      id=uploadPicture     /Users/mauricio/Documents/Pycharm/pythonProject/Curso_Selenium/Test_Cases2/Files/StarWars.jpeg
    F_texto          xpath=//textarea[contains(@id,'currentAddress')]      Dirección Demo
    F_scroll         0    500


Bloque_cinco
    [Documentation]  Bloque cinco
    click element   xpath=//div[@class=' css-1wa3eu0-placeholder'][contains(.,'Select State')]
    F_click_xy      xpath=//div[@class=' css-1wa3eu0-placeholder'][contains(.,'Select State')]     0    80
    click element   xpath=//div[@class=' css-1hwfws3'][contains(.,'Select City')]
    F_click_xy      xpath=//div[@class=' css-1hwfws3'][contains(.,'Select City')]     0    80
    click button    id=submit
    F_scroll        0  100
    sleep  2

Salir
    [Documentation]   Cerrar el navegador
    sleep  2
    close browser
