*** Settings ***
Library         Browser
Resource        ../variables/env_variables.resource

*** Keywords ***
Acessar tela de cadastro
    Click    text=Cadastre-se
    Wait For Elements State    css=button[data-testid="cadastrar"]    visible    timeout=10s

Preencher formulário de cadastro com dados válidos
    ${email}=    Generate Random Email
    ${password}=    Set Variable    Test1234!
    Fill Text    input[name="nome"]    Usuário Teste
    Fill Text    input[name="email"]    ${email}
    Fill Text    input[name="password"]    ${password}
    Click    css=button[data-testid="cadastrar"]
    [RETURN]    ${email}    ${password}

Tentar cadastrar com um email existente
    [Arguments]    ${email}
    Fill Text    input[name="nome"]    Outro Usuário
    Fill Text    input[name="email"]    ${email}
    Fill Text    input[name="password"]    OutraSenha123!
    Click    css=button[data-testid="cadastrar"]

Verificar cadastro com sucesso
    Wait For Navigation    url=https://compassuolfront.serverest.dev/home    timeout=10s

Generate Random Email
    ${random}=    Evaluate    str(__import__('random').randint(1000,9999))
    [RETURN]    usuario${random}@teste.com