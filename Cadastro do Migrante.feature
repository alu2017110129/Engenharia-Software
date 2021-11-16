Feature: Cadastro do Migrante

Background: 
When Usuario estar logado no sistema
And usuário tiver permissão de acesso ao cadastro de migrantes
  
Scenario: adicionar novo migrante
Given o formulario de cadastro esteja aberto
And todos os campos obritórios estejam preenchidos
And a validação dos dados esteja correta
When for clicado no botão de Gravar
Then gera tarefa de aprovação para administrativo
Then grava os dados no banco de dados
When for clicado botão Cancela
and confimado o cancelamento
Then limpa o formulario de cadastro

Scenario: Alterar um migrante já cadastrados
Given digitar um código / CPF do migrante 
And o código for de um usuário cadastrado
And os dados sejam válidos
When for clicado em confima alteração
Then gera tarefa de aprovação para administrativo
Then grava os dados no banco de dados
When for clicado botão Cancela
and confimado o cancelamento
Then limpa formulário

Scenario: Excluir um migrante já cadastrados
Given digitar um código / CPF do migrante 
And o código se de um usuário cadastrado
And for confirmado se é o migrante correto a excluir
When for clicado em confima excluir
Then gera tarefa de aprovação para administrativo
Then Grava solicitação de exclusão no banco de dados
When for clicado botão cancela
then limpa formulário