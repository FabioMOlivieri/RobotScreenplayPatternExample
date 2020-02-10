*** Settings ***
Resource        ../Libraries Proxy/Selenium Proxy.robot
Resource        ../User Interface/Login.robot

*** Keywords ***
Validar mensaje
    [Arguments]    ${aMsj}
    ${lblMensaje}    Capturar Elemento    ${locMensajes}
    Elemento debe contener valor  ${lblMensaje}    ${aMsj}  