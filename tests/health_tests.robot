*** Settings ***
Library    Browser
Resource    ../resources/common_keywords.resource

*** Test Cases ***
Conferir se o site está no ar
    Abrir o navegador e acessar a aplicação
    Get Text    css=h1    ==    Login