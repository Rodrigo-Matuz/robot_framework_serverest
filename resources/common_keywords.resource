*** Settings ***
Library    Browser
Resource   ../variables/env_variables.resource

*** Keywords ***
Abrir o navegador e acessar a aplicação
    New Browser    headless=false
    New Context
    New Page    ${URL}
