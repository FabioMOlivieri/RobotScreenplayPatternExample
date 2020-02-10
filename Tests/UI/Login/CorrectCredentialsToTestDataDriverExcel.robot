*** Settings ***
Suite Teardown    Cerrar Todo
Test Template     Test Credenciales Correctas
Resource          ../../../Tasks/Login.robot
Resource          ../../../Libraries Proxy/Selenium Proxy.robot
Resource          ../../../Global Definitions/Variables.robot
Library           DataDriver    ${FilePathExcel}    sheet_name=${HojaExcel}

**Variables
${FilePathExcel}    ../../../External Resources/UI/Login/ParametrosVerificarCredencialesIncorrectas.xlsx
${HojaExcel}      datos

*** Test Cases ***    usaurio        contrasenia        Terminal
TestLoginWithExcel    ${eUsuario}    ${eContrasenia}    ${eTerminal}

*** Keywords ***
Test Credenciales Correctas
    [Arguments]    ${eUsuario}    ${eContrasenia}    ${eTerminal}
    Iniciar Aplicacion  ${gWebUrlUat}  ${gBrowserChrome}  ${eUsuario}  ${eContrasenia}  ${eTerminal}
    Pagina debe contener valor    UAT
    Cerrar Pantalla
