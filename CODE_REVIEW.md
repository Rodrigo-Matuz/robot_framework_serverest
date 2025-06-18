# Code Review - Projeto ServeRest Testes Web

## Pontos Positivos
- **Estrutura e Organização**: Boa implementação do padrão Page Object Model com separação clara entre recursos, testes e variáveis
- **Reutilização de Código**: Keywords bem definidas e reutilizáveis melhoram manutenção e legibilidade
- **Dados de Teste**: Geração de dados aleatórios evita duplicidade e torna os testes mais robustos
- **Seletores**: Uso de `data-testid` nos seletores aumenta a estabilidade dos testes
- **Documentação**: README.md detalhado e uso de tags para categorizar os testes
- **Ferramentas**: Uso de bibliotecas modernas como Browser Library (baseada no Playwright)
- **Debugging**: Implementação de screenshots para facilitar a análise de falhas

## Pontos Negativos
- **Inconsistências de Padrão**: 
  - Uso inconsistente de `Test Setup/Teardown` vs. comandos dentro dos Test Cases
  - Seletores não padronizados (`listarProdutos` vs. `listar-produtos`)
  - Múltiplos `Fechar Navegador` redundantes nos casos de teste

- **Estrutura de Testes**:
  - Keywords complexas que poderiam ser divididas em funções menores
  - Pré-condições embutidas em test cases ao invés de keywords de setup
  - Descrições vagas em alguns Test Cases (ex: "recriar-cadastrar")

- **Práticas de Automação**:
  - Uso de `Sleep` ao invés de esperas condicionais explícitas
  - Validações genéricas que poderiam ser mais específicas
  - Falta de estratégia clara para gerenciamento de dados de teste

- **Cobertura e Integração**:
  - Ausência de testes para o endpoint de carrinho (embora justificado)
  - Falta de testes de regressão automatizados e testes de performance
  - Ausência de integração com CI/CD para execução contínua
  - Falta de relatórios personalizados além dos padrões do Robot Framework

## Recomendações Principais
1. Centralizar abertura/fechamento do navegador no `Suite Setup/Teardown`
2. Padronizar nomenclatura de seletores e estrutura de keywords
3. Substituir `Sleep` por esperas condicionais explícitas
4. Implementar estratégia de gerenciamento de dados de teste
5. Integrar com pipeline de CI/CD para execução contínua
6. Criar documentação sobre tratamento de falhas comuns

---

## Informações do Code Review

### Revisores (Squad 6: Cavaleiros do QA)
- [Rodrigo dos Santos Lima](https://github.com/Rodrigo-Matuz)
- [Wesley Cassio](https://github.com/Casx1)
- [Lucas Garcia Brito](https://github.com/Lucas-gb)

### Autores do Código (Squad 1: Gotham)
- [Anna Beatriz Santoro](https://github.com/annasantoro-glitch)
- [Ádony Lagares](https://github.com/adony-lagares)
- [Ana Carolina Rosa](https://github.com/CacauRosa)
- [Marcos Paulo](https://github.com/Marcosdev03)