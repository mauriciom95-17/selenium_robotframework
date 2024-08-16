*** Settings ***

Documentation   Demo de las variables
Library     SeleniumLibrary



*** Variables ***
${nombre}   =   Mauricio
${ap}  =  Moreno
${am}  = Salto
${ed}  = 28

*** Test Cases ***
Demo uno
    [Documentation]    Prueba de nuestas primeras variables
    [Tags]  Test_uno
    Log     Mi nombre es ${nombre}
    ${direccion} =  set variable    wisconsin 93
    Log To Console      ${direccion}

Demo dos
    [Documentation]    Prueba dos de nuestas primeras variables
    [Tags]  Test_dos
    Log     Mi nombre es ${nombre} ${ap}

Demo tres
    [Documentation]    Prueba tres de nuestas primeras variables
    [Tags]  Test_tres
    Log     Mi nombre es ${nombre} ${ap} ${am} ${ed}
    ${a} =  set variable    20
    ${b} =  set variable    30
    ${suma} =  Evaluate     ${a} + ${b}
    ${multi} =  Evaluate    ${a} * ${b}
    Log To Console   ${suma}
    Log To Console   ${multi}



*** Keywords ***
