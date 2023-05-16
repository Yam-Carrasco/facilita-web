*** Settings ***
Documentation    Teste regressivo de Login
Resource         ../Steps/Login.robot

*** Keywords ***
CT: Login com sucesso
    Dado que o usuário esteja logado no sistema
    Quando preencher as credenciais corretamente
    E clicar em entrar
    Então será logado no sistema