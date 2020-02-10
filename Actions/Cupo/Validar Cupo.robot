*** Settings ***
Resource        ../../Libraries Proxy/Selenium Proxy.robot
Resource        ../../User Interface/Cupo/Validar Cupo.robot


*** Keywords ***
Ingresar Documento Porte
    [Arguments]    ${aNroDocPorte}
    ${txtDocPorte}    Capturar Elemento    ${locTxtDocPorte}
    Ingresar Texto    ${txtDocPorte}    ${aNroDocPorte}

Seleccionar Sin Cupo
    ${OptSinCupo}    Capturar Elemento    ${locOptSinCupo}
    Presionar Boton    ${OptSinCupo}

Presionar Cancelar
    ${btnCancelar}    Capturar Elemento    ${locBtnCancelar}
    Scrollear Hasta Final Pagina
    Presionar Boton    ${btnCancelar}

Presionar No en Confirmacion
    ${btnConfNO}    Capturar Elemento    ${locBtnConfNO}
    Presionar Boton    ${btnConfNO}
