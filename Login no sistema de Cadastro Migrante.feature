Feature: Login no sistema de Cadastro Migrante

Background: 
When Usuario estar logado no sistema
And usario ter permissão de acesso ao cadastro de migrantes
  
Scenario: adicionar novo migrante
Given o formulario de cadastro esteja aberto
And todos os campos obritórios estejam preenchidos
And a validação dos dados esteja correta
When for clicado no botão de gravar
Then grava os dados no banco de dados

Scenario: Alterar um migrante já cadastrados
Given digitar um código / CPF do migrante 
And o código se de um usuário cadastrado
And os dados sejam válidos
When for clicado em confima alteração
Then grava os dados no banco de dados

Scenario: Excluir um migrante já cadastrados
Given digitar um código / CPF do migrante 
And o código se de um usuário cadastrado
And for confirmado se é o migrante correto a excluir
When for clicado em confima excluir
Then exclui os dados no banco de dados'