*** Settings ***
Library    SeleniumLibrary
Resource    ../Components/Input_Text.robot
Resource    ../Components/Click_Element.robot
Resource    ../Components/Open_Browser.robot
Resource    ../Resources/Login.robot

*** Keywords ***
Dado que o usuário esteja logado no sistema
    Abrir navegador

    ${USER_URL}    Get Location
    Should Be Equal    ${USER_URL}    ${PLATAFORM_URL}
    
    Wait Until Page Contains    ${TEXT_LOGIN_PAGE}

Quando preencher as credenciais corretamente
    Inserir texto    ${FIELD_USERNAME}    ${USER_LOGIN}
    Inserir texto    ${FIELD_PASSWORD}    ${PASSWORD}

E clicar em entrar
    Clicar no elemento    ${ENTER_BUTTON}

Então será logado no sistema
    Wait Until Page Contains Element    ${ELEMENT_HOME}    10s