*** Settings ***
Documentation   Api Rest
Library     SeleniumLibrary
Library     RequestsLibrary
Library     Collections
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${url}=      https://www.google.com.mx/
${navegador}=     chrome

${url_api}=   https://reqres.in/

*** Test Cases ***
Api test GET
    [Documentation]    Api test GET
    [Tags]  test_get
    create session    pagina_api    ${url_api}
    ${response}=  get request   pagina_api   api/users?page=2

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}

    #Validaciones
    ${status}  convert to string   ${response.status_code}
    Should Be Equal    ${status}    200

    ${body}   convert to string     ${response.content}
    Should contain   ${body}      michael.lawson@reqres.in

Api agregar Registro (POST)
    [Documentation]    Api Insertar Registro
    [Tags]  test_post
    create session    pagina_api    ${url_api}
    ${body}=    Create Dictionary     name=carlos  job=Sistemas  id=183
    ${header}=   Create Dictionary   Content-Type=application/json; charset=utf-8

    ${response}=  post request   pagina_api   /api/users   data=${body}   headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}

    #Validaciones
    ${status}  convert to string   ${response.status_code}
    Should Be Equal    ${status}    201

    ${res-body}   convert to string     ${response.content}
    Should contain   ${res-body}      Sistemas

Api consulta Get por (ID)
    [Documentation]    Api test GET po ID
    [Tags]  test_get_id
    create session    pagina_api    ${url_api}
    ${response}=  get request   pagina_api   api/users/2

    log to console    ${response.status_code}
    log to console    ${response.content}


    #Validaciones
    ${status}  convert to string   ${response.status_code}
    Should Be Equal    ${status}    200

    ${body}   convert to string     ${response.content}
    Should contain   ${body}      Janet

Api actualizar un Registro (PUT)
    [Documentation]    Api Update regisotro
    [Tags]  test_update
    create session    pagina_api    ${url_api}
    ${body}=    Create Dictionary     name=Toni  job=QA  id=4
    ${header}=   Create Dictionary   Content-Type=application/json; charset=utf-8

    ${response}=  put request   pagina_api   api/users/4   data=${body}   headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}

    #Validaciones
    ${status}  convert to string   ${response.status_code}
    Should Be Equal    ${status}    200

    ${res-body}   convert to string     ${response.content}
    Should contain   ${res-body}      QA

Api borrar Registro (DELETE)
    [Documentation]    Api Delete regisotro
    [Tags]  test_delete
    create session    pagina_api    ${url_api}


    ${response}=  delete request   pagina_api   api/users/170

    log to console    ${response.status_code}


    #Validaciones
    ${status}  convert to string   ${response.status_code}
    Should Be Equal    ${status}    204


*** Keywords ***