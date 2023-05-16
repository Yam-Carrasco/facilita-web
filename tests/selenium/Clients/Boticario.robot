*** Settings ***
Resource    ../TestCases/Login.robot

*** Test Cases ***
Login
    [Tags]    Boticario - Login
    CT: Login com sucesso