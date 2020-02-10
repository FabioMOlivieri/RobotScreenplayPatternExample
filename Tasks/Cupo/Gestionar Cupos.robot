*** Settings ***
Resource        ../../Libraries Proxy/Selenium Proxy.robot
Resource        ../../Actions/Cupo/Gestionar Cupos.robot

*** Keywords ***
Consultar cupo segun doc porte 
    [Arguments]     ${nroDocPorte}
    Presionar Buscar
    Sleep  3
    ${cantFilas}    Obtener Cantidad Filas
    FOR    ${i}    IN RANGE    1    ${cantFilas}+1
        ${celda}    Obtener Valor Celda    ${i}    4
        Exit For Loop If    ${celda}==${nroDocPorte}
    END
    Seleccionar Fila    ${i}
    Presionar Consultar
