*** Settings ***
Resource        ../../Libraries Proxy/Selenium Proxy.robot
Resource        ../../Actions/Cupo/Validar Cupo.robot


**Keywords
Ingresar Carta de porte sin cupo
    [Arguments]     ${nroDocPorte}
    Ingresar Documento Porte    ${nroDocPorte}
    Seleccionar Sin Cupo

Cancelar ingreso cupo
    Scrollear Hasta Final Pagina
    Presionar Cancelar
    Presionar No en Confirmacion