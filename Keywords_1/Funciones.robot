*** Settings ***
Library     SeleniumLibrary
Library     Dialogs

*** Variables ***
${ruta_fotos_pagina}=   /Users/mauricio/Documents/Pycharm/pythonProject/Curso_Selenium/Test_Cases3/Reportes_Practica_excel_python/IMG/


*** Keywords ***
F_texto
    [Arguments]   ${sel}    ${dato}
    Wait Until Element Is Visible    ${sel}
    Wait Until Element Is Enabled    ${sel}
    Element should be visible        ${sel}
    clear element text   ${sel}
    input text        ${sel}     ${dato}
    capture element screenshot   ${sel}   ${ruta_fotos_pagina}${dato}.png


F_enter
    [Arguments]   ${sel}
    Wait Until Element Is Visible    ${sel}
    Wait Until Element Is Enabled    ${sel}
    Element should be visible        ${sel}
    Press Keys    ${sel}    ENTER


F_foto_pagina
    [Arguments]  ${nombre_imagen}
    capture page screenshot    ${ruta_fotos_pagina}${nombre_imagen}


F_foto_selector
    [Arguments]  ${sel}    ${nombre_imagen}
    Wait Until Element Is Visible    ${sel}
    Wait Until Element Is Enabled    ${sel}
    Element should be visible        ${sel}
    capture element screenshot    ${sel}     ${ruta_fotos_pagina}${nombre_imagen}

F_scroll
    [Arguments]    ${x}    ${y}
    Execute JavaScript    window.scroll(${x}, ${y})

F_click_xy
    [Documentation]   Click sobre un elemento
    [Arguments]     ${sel}  ${x}    ${y}
    click element at coordinates    ${sel}  ${x}  ${y}

F_pedir_valor
    [Arguments]     ${texto}
    ${val}=  Get Value From User     ${texto}
    [RETURN]  ${val}

