*** Settings ***
Documentation   Setup and Teardown
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot

Suite Setup   Inicio
Suite Teardown   Salir


*** Variables ***
${url}=      https://admin-demo.nopcommerce.com/login?returnurl=%Fadmin%2F
${navegador}=     chrome

*** Test Cases ***
Demo uno

    Validar_login



Demo dos

    Validar_login_dos





*** Keywords ***
Inicio
    [Documentation]   Prueba de Setup y Teardown
    [Tags]  Test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be    Your store. Login
    set selenium implicit wait  10
    set selenium speed  .3s


Validar_login
    F_texto   id=Email     mauriciom17s95@gmail.com
    F_texto   id=Password     HolaMundo123
    click button   xpath=//button[contains(.,'Log in')]
    wait until page contains  Login was unsuccessful. Please correct the errors and try again.

Validar_login_dos
    F_texto   id=Email     mauricio@gmail.com
    F_texto   id=Password     HolaMundo
    click button   xpath=//button[contains(.,'Log in')]
    wait until page contains  Login was unsuccessful. Please correct the errors and try again.

Salir
    sleep  2
    close browser