*** Settings ***
Documentation   Builtln
Library     SeleniumLibrary
Library     Dialogs
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://demoqa.com/text-box
${navegador}=     chrome

*** Test Cases ***
Concatenar
    [Documentation]   Builtln concatenar
    [Tags]  test_concatenar
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    title should be   DEMOQA
    set selenium implicit wait  10
    #set selenium speed   .5s
    ${nom}=    Set variable   Juan
    ${ap}=     Set variable   Perez
    ${nombre_completo}=    Catenate   ${nom}    ${ap}
    ${nombre_completo}=    Catenate   SEPARATOR=--  ${nom}    ${ap}   Catenate   Chevez

    log to console   ${nombre_completo}

    sleep  2
    close browser

Repetir Keyword
    [Documentation]   Builtln Repetir keyword
    [Tags]  test_repetir
    #Repeat Keyword   10 times   Bienvenido
    Repeat Keyword   1 minutes   Bienvenido

Comparar should equal1
    [Documentation]   Builtln Validar igualdad
    [Tags]  test_equal1

    ${a}=  Set variable  10
    ${b}=  Set variable  20
    Should Be Equal  ${a}  ${b}
    IF  '${a}' == '${b}'
        log to console   son iguales
    ELSE
        log to console   no son iguales
    END

Comparar should equal2
    [Documentation]   Builtln Validar igualdad integer
    [Tags]  test_integer

    ${a}=  Set variable  10
    ${b}=  Set variable  20
    Should Be Equal as integers  ${a}  10


Comparar should equal3
    [Documentation]   Builtln Validar igualdad strings
    [Tags]  test_string

    ${nombre}=  Set variable  Pedro

    Should be equal as strings   ${nombre}     Pedro


Comparar should equal4
    [Documentation]   Builtln Validar igualdad contain
    [Tags]  test_contain

    ${nombre}=  Set variable  Pedro Perez Chavez

    Should contain   ${nombre}     Per


Comparar should equal5
    [Documentation]   Builtln Validar igualdad true
    [Tags]  test_true

    ${a}=  Set variable  20

    Should be true   ${a} > 10

Comparar should equal6
    [Documentation]   Builtln Validar igualdad empty
    [Tags]  test_empty

    ${a}=  Set variable

    Should be empty   ${a}

Comparar should not equal7
    [Documentation]   Builtln Validar con negación
    [Tags]  test_not

    ${a}=  Set variable  20
    ${nombre}=  Set variable  Juan

    Should not be equal  ${a}   15
    Should not be equal as strings  ${nombre}   juan
    Should not be empty   ${nombre}

Comparar should con if equal8
    [Documentation]   Builtln Validar con funcion if
    [Tags]  test_if

    ${a}=  Set variable  10
    #should be equal  ${a}   10
    ${bandera}=     Run keyword and return status    should be equal   ${a}   10
    log to console   ${bandera}
    IF  '${bandera}' == 'True'
        log to console   A si es igual a 10
        Dato uno
    ELSE
        log to console   A no es igual a 10
        Dato dos
    END

Comparar ELSE IF
    [Documentation]   Builtln Validar con funcion ELSE IF
    [Tags]  test_else_if

    ${nom}    Get Value From User     Dame tu nombre
    IF  '${nom}' == 'Mauricio'
        log to console     Bienvenido ${nom}
        Dato uno
    ELSE IF  '${nom}' == 'Juan'
      log to console     Bienvenido ${nom}
      Dato dos
    ELSE IF  '${nom}' == 'Pedro'
      log to console     Bienvenido ${nom}
      Dato tres
    ELSE
      log to console     Usuario no reconocido
    END

Comparar Run Keyword IF
    [Documentation]   Builtln Validar con keyword if
    [Tags]  test_keyword_if
    ${nom}=  Set variable  Miguel
    #Run Keyword If  '${nom}' == 'Pedro'  Bienvenido    ELSE  dato uno
    Run Keyword If  '${nom}' == 'Pedro'  Bienvenido    ELSE IF '${nom}' == 'Miguel'  dato dos   ELSE   "no te conozco"



*** Keywords ***
Bienvenido
   log to console    Bienvenido a RobotFramework

Dato uno
   log to console   esto es del dato uno

Dato dos
   log to console   esto es del dato dos

Dato tres
   log to console   esto es del dato tres

Dato cuatro
   log to console   esto es del dato cuatro