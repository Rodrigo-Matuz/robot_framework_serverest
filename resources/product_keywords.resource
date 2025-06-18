*** Settings ***
Library         Browser
Resource        ../variables/env_variables.resource
Resource        ./common_keywords.resource

*** Keywords ***
Criar Produto com sucesso como administrador
    Click    css=[data-testid="cadastrarProdutos"]
    Fill Text    input[name="nome"]    ${PRODUCT_NAME}
    Fill Text    input[name="price"]    ${PRODUCT_PRICE}
    Fill Text    css=[data-testid="descricao"]    ${PRODUCT_DESCRIPTION}
    Fill Text    input[name="quantity"]    ${PRODUCT_QUANTITY}
    Click    css=[data-testid="cadastarProdutos"]

Pesquisar produto
    [Arguments]    ${search_term}
    Wait For Elements State    css=[data-testid="pesquisar"]    visible    timeout=3s
    Fill Text    css=[data-testid="pesquisar"]    ${search_term}
    Click    css=[data-testid="botaoPesquisar"]
    Wait For Elements State    css=.card    visible    timeout=10s

Adicionar produto ao carrinho
    [Arguments]    ${product_name}
    Click    css=[data-testid="adicionarNaLista"] 
    Sleep    1s
    Click    css=[data-testid="adicionar carrinho"]
    Sleep    1s

Verificar mensagem em construção
    Wait For Elements State    text=Em construção aguarde    visible    timeout=10s