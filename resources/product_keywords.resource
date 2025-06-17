*** Settings ***
Library         Browser
Resource        ../variables/env_variables.resource
Resource        ./common_keywords.resource

*** Keywords ***
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