*** Settings ***
Documentation   Practica For
Library     SeleniumLibrary
Library     String
Resource   ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://testpages.herokuapp.com/styled/basic-html-form-test.html
${navegador}=     chrome
${imagen}=  /Users/mauricio/Documents/Pycharm/pythonProject/Curso_Selenium/Test_Cases2/Files/StarWars.jpeg
${numbers}=       Generate Random String   5    1234568765432

*** Test Cases ***
Demo uno
   FOR    ${i}  IN RANGE   0     3
       Inicio
       Bloque_uno
       Bloque_dos
       Bloque_tres

       Salir
   END




*** Keywords ***
Inicio
        [Documentation]   Prueba de la Practica de For
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be   HTML Form Elements
    set selenium implicit wait  10
    #set selenium speed   .1s
    wait until page contains   Basic HTML Form Example


Bloque_uno
    [Documentation]   Bloque_uno
    ${numbers}=       Generate Random String   5    1234568765432
    F_texto   xpath=//input[@name='username']     Nombre #${numbers}
    F_texto   xpath=//input[@type='password']     ${numbers}
    F_texto   xpath=//textarea[@name='comments']  Nuevo comentario #${numbers}

Bloque_dos
    [Documentation]   Bloque_dos
    choose file  xpath=//input[contains(@type,'file')]   ${imagen}
    click element  xpath=//input[contains(@value,'cb2')]
    click element  xpath=//input[contains(@value,'rd3')]

Bloque_tres
    [Documentation]   Bloque_tres
    select from list by index   xpath=//select[contains(@multiple,'multiple')]    2
    sleep  1
    select from list by index   xpath=//select[contains(@name,'dropdown')]     3
    sleep  1
    click button  xpath=//input[contains(@type,'submit')]

Salir
    sleep  3
    close browser