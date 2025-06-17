*** Settings ***
Library         Browser
Resource        ../variables/env_variables.resource

*** Keywords ***
Acessar tela de cadastro
    Click    text=Cadastre-se
    Wait For Elements State    css=button[data-testid="cadastrar"]    visible    timeout=10s

Preencher formulário de cadastro com dados válidos
    [Arguments]    ${email}=${EMPTY}    ${password}=${EMPTY}    ${set_admin}=${FALSE}
    IF    '${email}' == ''
        ${email}=    Generate Random Email
    END
    IF    '${password}' == ''
        ${password}=    Set Variable    Test1234!
    END
    Fill Text    input[name="nome"]    Usuário Teste
    Fill Text    input[name="email"]    ${email}
    Fill Text    input[name="password"]    ${password}
    IF    ${set_admin}
        Click    css=#administrador
    END
    Click    css=button[data-testid="cadastrar"]
    RETURN    ${email}    ${password}

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