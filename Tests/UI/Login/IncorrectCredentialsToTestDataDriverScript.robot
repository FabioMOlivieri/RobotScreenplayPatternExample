*** Settings ***
Suite Setup       AbrirNavegador    ${gWebUrlUat}    ${gBrowserChrome}
Suite Teardown    Cerrar Todo
Test Template     Test Credenciales Incorrectas
Resource          ../../../Libraries Proxy/Selenium Proxy.robot
Resource          ../../../Global Definitions/Variables.robot
Resource          ../../../Tasks/Login.robot
Resource          ../../../Questions/Login.robot

*** Test Cases ***    usaurio           contrasenia
ok Timbues            fabio.olivieri    Colorado111
ok BB                 faboo.olivieri    Colorado8888

*** Keywords ***
Test Credenciales Incorrectas
    [Arguments]    ${usuario}    ${contrasenia}
    Indicar usuario  ${usuario}     ${contrasenia}
    Validar mensaje    Credenciales incorrectas