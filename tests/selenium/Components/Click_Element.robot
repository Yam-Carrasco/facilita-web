*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Clicar no elemento
    [Arguments]    ${ELEMENT}
    Wait Until Element Is Visible    ${ELEMENT}
    Click Element                    ${ELEMENT}