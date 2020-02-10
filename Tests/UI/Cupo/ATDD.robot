*** Settings ***
Resource        ../../../Roles/rol.robot
Resource        ../../../Tasks/Login.robot
Resource        ../../../Tasks/Menu.robot
Resource        ../../../Tasks/Cupo/Validar Cupo.robot
Resource        ../../../Global Definitions/Variables.robot

*** Test Cases ***   
Scenario: Probar formato ATDD
    Given El usuario Administrador ingresa a Gestionar Cupo en UAT para Timbues
    When Ingresar Carta de porte sin cupo    123456789
    AND Cancelar ingreso cupo
    Then El msj debe ser 

*** Keywords ***
El usuario Administrador ingresa a Gestionar Cupo en UAT para Timbues
    @{UsuPass}=     Obtener usuario Administrador   
    Iniciar Aplicacion  ${gWebUrlUat}  ${gBrowserChrome}  @{UsuPass}[0]  ${UsuPass}[1]  ${gIDTerminalTimbues}    
    Ir a Validar Cupo

El msj debe ser 
    Cerrar Pantalla 
