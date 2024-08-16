*** Settings ***
Documentation   Prueba uno
Library     SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://demoqa.com/text-box
${navegador}=     chrome

*** Test Cases ***
Demo uno
    Inicio
    Final




*** Keywords ***

Inicio
    [Documentation]   Prueba Paralelo
    [Tags]  test_uno
    FOR  ${i}  IN RANGE  1  4
         Open Browser    ${url}   ${navegador}
         Maximize Browser Window
         title should be   DEMOQA
         set selenium implicit wait  10
         #set selenium speed   .5s
         F_texto    //input[@id='userName']   Mauricio
    END

Final
   sleep  2
   close all browsers
