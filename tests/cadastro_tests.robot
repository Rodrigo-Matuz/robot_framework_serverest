*** Settings ***
Documentation    Casos de teste para o Cadastro de usuários
Resource         ../resources/common_keywords.resource
Resource         ../resources/cadastro_keywords.resource
Resource        ../resources/login_keywords.resource
Test Setup       Abrir o navegador e acessar a aplicação
Test Teardown    Close Browser

*** Test Cases ***
Cadastro com sucesso
    Acessar tela de cadastro
    Preencher formulário de cadastro com dados válidos
    Verificar cadastro com sucesso

Tentar cadastrar usuário com e-mail já existente
    Acessar tela de cadastro
    ${email_existente}    ${_}=    Preencher formulário de cadastro com dados válidos
    Verificar cadastro com sucesso
    Fazer logout
    Acessar tela de cadastro
    Tentar cadastrar com um email existente    ${email_existente}
    ${mensagem_erro}=    Get Text    css=.alert > span
    Should Be Equal    ${mensagem_erro}    Este email já está sendo usado