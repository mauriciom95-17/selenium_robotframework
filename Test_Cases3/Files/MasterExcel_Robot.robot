*** Settings ***
Library     SeleniumLibrary
Library     MasterExcel.py



*** Keywords ***

Numero de Filas
      [Documentation]   Leyendo el numero de filas
      [Arguments]   ${Hoja}
      ${res}=   Numero_filas    ${Hoja}
      #log to console  Numero de filas ${res}
      RETURN   ${res}

Obteniendo Valor Columna
      [Documentation]   Obteniendo el Valor de la columna
      [Arguments]   ${Hoja}   ${fila}   ${col}
      ${res}=   Dato_columna    ${Hoja}   ${fila}   ${col}
      #log to console    ${res}
      RETURN   ${res}