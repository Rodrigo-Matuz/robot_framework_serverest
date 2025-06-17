*** Settings ***
Documentation     Testes de busca de produtos e adição ao carrinho
Resource          ../resources/product_keywords.resource
Resource          ../resources/cadastro_keywords.resource
Test Setup        Configurar teste
Test Teardown     Close Browser

*** Test Cases ***
Pesquisar produto e verificar resultados
    Pesquisar produto    ${SEARCH_TERM}

Adicionar produto ao carrinho e verificar mensagem em construção
    Pesquisar produto    ${SEARCH_TERM}
    Adicionar produto ao carrinho    ${PRODUCT_NAME}
    Verificar mensagem em construção

*** Keywords ***
Configurar teste
    Abrir o navegador e acessar a aplicação
    # Criar um novo usuário para garantir que temos um usuário válido
    Acessar tela de cadastro
    Preencher formulário de cadastro com dados válidos
    Verificar cadastro com sucesso