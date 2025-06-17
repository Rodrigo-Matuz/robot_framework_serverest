*** Settings ***
Documentation    Casos de teste para o Login de usuários
Library         Browser
Resource        ../variables/env_variables.resource
Resource        ../resources/common_keywords.resource
Resource        ../resources/login_keywords.resource
Resource        ../resources/cadastro_keywords.resource
Test Setup       common_keywords.Abrir o navegador e acessar a aplicação
Test Teardown    Close Browser

*** Test Cases ***
Login com sucesso
    Acessar tela de cadastro
    ${email_cadastrado}    ${senha_cadastrada}=    Preencher formulário de cadastro com dados válidos
    Verificar cadastro com sucesso
    Fazer logout
    Fazer login com credenciais válidas    ${email_cadastrado}    ${senha_cadastrada}
    Verificar login com sucesso

Login com email invalido
    Fazer login com email inválido
    ${mensagem}=    Get Text    css=.alert > span
    Should Contain    ${mensagem}    Email e/ou senha inválidos

Login com senha inválida
    Fazer login com senha inválida
    ${mensagem}=    Get Text    css=.alert > span
    Should Contain    ${mensagem}    Email e/ou senha inválidos

Login com campos vazios
    Tentar fazer login com campos vazios
    Wait For Elements State    text=Email é obrigatório    visible
    ${erro_senha}=      Get Text    text=Password é obrigatório
    Wait For Elements State    text=Password é obrigatório    visible