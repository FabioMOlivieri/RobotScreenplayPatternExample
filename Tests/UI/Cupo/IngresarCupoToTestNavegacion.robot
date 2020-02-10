*** Settings ***
Suite Setup       Iniciar Aplicacion    ${gWebUrlUat}    ${gBrowserChrome}    ${gUser}    ${gContrasenia}    ${gIDTerminalTimbues}
Suite Teardown    Cerrar Todo
Resource            ../../../Libraries Proxy/Selenium Proxy.robot
Resource            ../../../Global Definitions/Variables.robot
Resource            ../../../Tasks/Login.robot
Resource            ../../../Tasks/Menu.robot
Resource            ../../../Tasks/Cupo/Validar Cupo.robot

*** Test Cases ***
TestNavegation
    Ir a Validar Cupo
    Ingresar Carta de porte sin cupo    123456789
    Cancelar ingreso cupo
    Cerrar Pantalla
