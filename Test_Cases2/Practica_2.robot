*** Settings ***
Documentation   Practica Uno Intermedio
Library     SeleniumLibrary
Resource    ../Keywords_1/Keywords_practica1_2.robot




*** Variables ***
${url}=     https://www.liverpool.com.mx/tienda/home
${navegador}=         chrome

*** Test Cases ***
Practica Uno Keywords

    Inicio
    Bloque uno      mauriciom17s95@gmail.com        cr7real7
    Final




*** Keywords ***
