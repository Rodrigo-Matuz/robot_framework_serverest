*** Settings ***
Library         Browser
Resource        ../variables/env_variables.resource
Resource        ./common_keywords.resource

*** Keywords ***
Fazer login com credenciais válidas
    [Arguments]    ${email}    ${password}
    Click    text=Login
    Fill Text    input[name="email"]    ${email}
    Fill Text    input[name="password"]    ${password}
    Click    text=Entrar

Verificar login com sucesso
    Wait For Navigation    url=https://compassuolfront.serverest.dev/home    timeout=10s

Fazer login com senha inválida
    Click    text=Login
    Fill Text    input[name="email"]    ${VALID_EMAIL}
    Fill Text    input[name="password"]    SenhaErrada123
    Click    text=Entrar

Fazer login com email inválido
    Click    text=Login
    Fill Text    input[name="email"]    InvalidEmail@test.com
    Fill Text    input[name="password"]    ${VALID_PASSWORD}
    Click    text=Entrar


Fazer logout
    Click    css=[data-testid="logout"]
    Wait For Elements State    text=Login    visible    timeout=10s

Tentar fazer login com campos vazios
    Click    text=Login
    Wait For Elements State    css=button[type="submit"]    visible    timeout=5s
    Click    text=Entrar