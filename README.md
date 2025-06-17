# Testes Automatizados Web com Robot Framework - ServeRest

Este repositório faz parte de um programa de bolsas e contém testes automatizados Web para a aplicação ServeRest utilizando Robot Framework.

## Sobre o Projeto

Neste projeto, implementamos testes automatizados Web para a aplicação [ServeRest](https://compassuolfront.serverest.dev/). Cada membro da Squad é responsável por implementar pelo menos dois casos de teste, seguindo boas práticas de código, Git e utilizando Gitflow com aprovação de pull requests.

## Como contribuir

<details>
<summary>Orientações para contribuição</summary>

### Processo de contribuição

1. **Fork do repositório**
   - Acesse a página principal deste repositório no GitHub
   - No canto superior direito da página, clique no botão "Fork"
   - Selecione sua conta pessoal como destino do fork
   - Aguarde a conclusão do processo de fork
   - Agora você terá uma cópia do repositório em sua conta: `https://github.com/SEU-USUARIO/robot_framework_serverest`
   - Clone o fork para seu ambiente local:
     ```
     git clone https://github.com/SEU-USUARIO/robot_framework_serverest.git
     cd robot_framework_serverest
     ```
   - Adicione o repositório original como "upstream" para manter seu fork atualizado:
     ```
     git remote add upstream https://github.com/Rodrigo-Matuz/robot_framework_serverest.git
     ```

2. **Crie uma branch para sua feature**
   - Siga o padrão de nomenclatura: `seunome-funcionalidade`
   - Por exemplo:
     ```
     git checkout -b fulano-login-tests
     ```

3. **Desenvolva sua contribuição**
   - Implemente os casos de teste designados para a aplicação ServeRest
   - Siga as boas práticas de código do Robot Framework
   - Organize seus arquivos de teste de forma clara e estruturada
   - Teste localmente antes de enviar

4. **Boas práticas de commit**
   - Faça commits pequenos e frequentes (cada commit com poucas alterações)
   - Use mensagens claras e imperativas, por exemplo:
     - "Adiciona teste de login com credenciais válidas"
     - "Corrige seletor do botão de cadastro"
     - "Refatora keyword de validação de produtos"
   - Evite commits com muitas alterações não relacionadas

5. **Envie um Pull Request**
   - Antes de enviar, atualize seu fork com as últimas alterações do repositório principal:
     ```
     # Certifique-se de estar na branch principal do seu fork
     git checkout main
     
     # Busque as atualizações do repositório original
     git fetch upstream
     
     # Mescle as atualizações do repositório original com seu fork local
     git merge upstream/main
     
     # Volte para sua branch de trabalho
     git checkout seunome-funcionalidade
     
     # Rebase sua branch com a branch principal atualizada
     git rebase main
     ```
   - Resolva conflitos se houver algum
   - Envie sua branch para o GitHub:
     ```
     git push origin seunome-funcionalidade
     ```
   - Acesse seu fork no GitHub (`https://github.com/SEU-USUARIO/robot_framework_serverest`)
   - Você verá um banner sugerindo criar um Pull Request, clique em "Compare & pull request"
   - Verifique se a base é `main` do repositório original e o compare é sua branch `seunome-funcionalidade`
   - Adicione um título claro e descritivo para o PR
   - Na descrição, explique detalhadamente o que foi implementado/alterado
   - Clique em "Create pull request"

6. **Processo de revisão**
   - O PR será revisado pelo líder da squad (dono desse repositório)
   - Atenda às solicitações de alteração, se houver
   - Após aprovação, o PR será mesclado ao repositório principal

### Estrutura do projeto

Organize seus testes seguindo a estrutura padrão do Robot Framework:
- `resources/`: Keywords e variáveis reutilizáveis
- `tests/`: Arquivos de teste
- `results/`: Resultados dos testes (adicionado ao .gitignore)
- `custom/`: Fique a vontade para sugerir uma nova pasta caso queira

### Dicas para testes com Robot Framework

- Utilize Page Objects para organizar seus testes
- Crie keywords reutilizáveis para ações comuns
- Documente suas keywords e testes
- Utilize variáveis para dados de teste
- Siga as boas práticas de automação web com Robot Framework

</details>
