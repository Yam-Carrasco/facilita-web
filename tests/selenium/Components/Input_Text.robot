*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Inserir texto
    [Arguments]    ${FIELD}    ${TEXT}
    Wait Until Element Is Visible    ${FIELD}
    Input Text    ${FIELD}    ${TEXT}