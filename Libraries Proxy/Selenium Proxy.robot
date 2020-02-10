*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Abrir Navegador
    [Arguments]    ${aURL}    ${aBrowser}
    ################### Abrir el navegador ####################
    Open Browser    ${aURL}    ${aBrowser}
    ################### maximizar el tamaño ##################
    #Maximize Browser Window
    ################### fijar la velocidad del navegador ################
    #Set Selenium Speed    1 seconds 

Capturar Elemento
    [Arguments]    ${aLocator}
    ################## esperar hasta que cargue un elemento #################
    Wait Until Page Contains Element    ${aLocator}    10 seconds
    ################### obtener un elemento #################
    ${aElement}    set variable    ${aLocator}
    [Return]    ${aElement}

Ingresar Texto
    [Arguments]    ${aElement}    ${aText}
    ################### Chequear que esté habilitado o visibile ##############
    #Element Should Be Enabled    ${txtUsuario}
    #Element Should Be Visible    ${txtUsuario}
    ################### ingresar texto en una caja de texto ##################
    Set Focus To Element    ${aElement}
    Input Text    ${aElement}    ${aText}

Ingresar Password
    [Arguments]    ${aElement}    ${aText}
    ################### Chequear que esté habilitado o visibile ##############
    #Element Should Be Enabled    ${txtUsuario}
    #Element Should Be Visible    ${txtUsuario}
    ################### ingresar texto en una caja de texto ##################
    Set Focus To Element    ${aElement}
    Input Password    ${aElement}    ${aText}

Elegir Opcion Lista Por Valor
    [Arguments]    ${aElement}    ${aValue}
    Select From List By Value    ${aElement}    ${aValue}

Presionar Boton
    [Arguments]    ${aElement}
    Set Focus To Element    ${aElement}
    Click Element    ${aElement}

Scrollear Hasta Final Pagina
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)

Scrollear al Inicio Pagina
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)

Scrollear Hasta Elemento
    [Arguments]    ${aElement}
    Scroll Element Into View    ${aElement}
    Wait Until Element Is Visible    ${aElement}

Ir A Otra Pagina
    [Arguments]    ${aURL}
    Go To    ${aURL}

Volver
    Go Back

Cerrar Todo
    Close All Browsers

Cerrar Pantalla
    Close Browser

Imprimir pantalla
    [Arguments]    ${aLocalDir}
    Capture Page Screenshot    ${aLocalDir}
    #Ej. #Capture Page Screenshot    C:/Users/fabio.olivieri/page.png

Imprimir Elemento
    [Arguments]    ${aElement}    ${aLocalDir}
    Capture Element Screenshot    ${aElement}    ${aLocalDir}
    #Ej. #Capture Element Screenshot    ${NroDocPorte}    C:/Users/fabio.olivieri/btn.png

Devolver valor local storage 
    [Arguments]     ${aConcepto}
    ${valor}=    Execute Javascript    return window.localStorage.getItem("${aConcepto}")
    [Return]    ${valor}

Elemento debe contener valor
    [Arguments]     ${aLocator}     ${aValor}
    Element Should Contain  ${aLocator}  ${aValor}

Pagina debe contener valor
    [Arguments]     ${aValor}
    Page Should Contain  ${aValor}
