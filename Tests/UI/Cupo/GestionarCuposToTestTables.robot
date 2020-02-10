*** Settings ***
Suite Setup       Iniciar Aplicacion    ${gWebUrlUat}    ${gBrowserChrome}    ${gUser}    ${gContrasenia}    ${gIDTerminalTimbues}
Suite Teardown    Cerrar Todo
Resource            ../../../Libraries Proxy/Selenium Proxy.robot
Resource            ../../../Global Definitions/Variables.robot
Resource            ../../../Tasks/Login.robot
Resource            ../../../Tasks/Menu.robot
Resource            ../../../Tasks/Cupo/Gestionar Cupos.robot

*** Test Cases ***
TestTable
    Ir a Gestionar Cupo
    Consultar cupo segun doc porte  453453453453
