*** Settings ***
Documentation   Practica Base de Datos Mysql
Library     SeleniumLibrary
Library     DatabaseLibrary
Library     OperatingSystem
Resource    ../Keywords_1/Funciones.robot

Suite Setup     Connect To Database      pymysql        ${dbname}    ${dbuser}    ${dbpass}   ${dbhost}    ${dbport}
Suite Teardown  Disconnect From Database




*** Variables ***
${url}=      https://www.google.com.mx/
${navegador}=     chrome
${dbname}=      sistema_uno
${dbuser}=      mauricio
${dbpass}=      12345
${dbhost}=      localhost
${dbport}=      3306

*** Test Cases ***
Base crear tabla
      [Documentation]  Crear una nueva tabla en nuestro sistema
      [Tags]   test_crear_tabla
      ${crear}     Execute Sql String        CREATE TABLE `personas2` (`id` int(11) NOT NULL,`name` varchar(40) NOT NULL,`ap` varchar(40) NOT NULL);
      log to console    ${crear}
      Should Be Equal As Strings    ${crear}      None

Base insertar Registros
      [Documentation]  Insertar registros
      [Tags]   test_insertar
      #${insertar}     Execute Sql String        INSERT INTO personas2 values("02","Toni","Cruz")

      ${insertar_global}=   Execute Sql Script     /Users/mauricio/Documents/Pycharm/pythonProject/Curso_Selenium/Test_Cases3/Files/Insertar.sql
      log to console    ${insertar_global}
      Should Be Equal As Strings    ${insertar_global}      None

Base Consulta por Nombre
      [Documentation]  Consultar por Nombre
      [Tags]   test_cn
      check if exists in database     select name from personas2 where name="Mauricio"

Base Consulta no Existe el nombre
      [Documentation]  No Existe
      [Tags]   test_no_existe
      check if not exists in database     select name from personas2 where name="Toni"

Base Validar Tabla
      [Documentation]  Validar si la tabla Existe
      [Tags]   test_tabla_existe
      table must exist   personas2

Base Contar numero de elemenros que Existen
      [Documentation]  Elementos Existen
      [Tags]   test_numero_existe
      row count is equal to x    select * from personas2 where ap="Moreno"   1


Base Actualizar Campo
      [Documentation]  Actualizando un Campo
      [Tags]   test_actualizar
      ${actualizar}=        Execute Sql String    Update personas2 set name="Karla" where name="Ericka"
      log to console    ${actualizar}
      Should Be Equal As Strings    ${actualizar}      None

Base Borrar Campos Truncate
      [Documentation]  Borrar Elementos
      [Tags]   test_borrar
      ${delete}=  Execute Sql String    TRUNCATE TABLE personas2
      log to console    ${delete}
      Should Be Equal As Strings    ${delete}      None

Base Traer Todos los Campos
      [Documentation]  Consulta todos los Registros
      [Tags]   test_todos
      @{todos}=  query    select * from personas2
      log to console  many @{todos}






*** Keywords ***