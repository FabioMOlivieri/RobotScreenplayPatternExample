*** Settings ***
Resource        ../../Libraries Proxy/Selenium Proxy.robot
Resource        ../../User Interface/Cupo/Gestionar Cupos.robot

*** Keywords ***
Presionar Buscar
    ${btnBuscar}    Capturar Elemento    ${locBtnBuscar}
    Presionar Boton    ${btnBuscar}

Obtener Cantidad Filas
    ${cantFilas}    Get Element Count    ${locFila}
    [Return]    ${cantFilas}

Obtener Cantidad Columnas
    ${locColumnas}  Catenate    ${locFila}  [2] ${locColumna} 
    ${cantColumnas}    Get Element Count    ${locColumnas}
    [Return]    ${cantColumnas}

Obtener Valor Celda
    [Arguments]    ${aFila}    ${aColumna}
    ${locCelda}     Catenate    ${locFila}  [   ${aFila}    ]   ${locColumna}   [   ${aColumna} ]
    ${celda}    Get Text   ${locCelda}  
    [Return]    ${celda}

Seleccionar Fila
    [Arguments]    ${aFila}
    ${seleccion}     Catenate   ${locFila}  [   ${aFila}    ]   ${locColumna}   [1] ${locCheckbox}
    Presionar Boton    ${seleccion}

Presionar Consultar
    ${btnConsultar}    Capturar Elemento    ${locBtnConsultar}
    Presionar Boton    ${btnConsultar}