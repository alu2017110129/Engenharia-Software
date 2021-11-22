Feature: Cadastro do Usuário

Background:
When Usuario estar logado no sistema
and usuário ser admin do sistema
And usuário tiver permissão de acesso ao cadastro de Usuários
  
Scenario: adicionar novo Usuário
Given o formulario de cadastro esteja aberto
And todos os campos obritórios estejam preenchidos
And a validação dos dados esteja correta
When for clicado no botão de Gravar
Then grava os dados no banco de dados
When for clicado botão Cancela
and confimado o cancelamento
Then limpa o formulario de cadastro

Scenario: Alterar um Usuário já cadastrados
Given digitar um código / CPF do Usuário 
And o código for de um usuário cadastrado
And os dados sejam válidos
When for clicado em confima alteração
Then grava os dados no banco de dados
When for clicado botão Cancela
and confimado o cancelamento
Then limpa formulário

Scenario: Excluir um Usuário já cadastrados
Given digitar um código / CPF do Usuário 
And o código se de um usuário cadastrado
And for confirmado se é o Usuário correto a excluir
When for clicado em confima excluir
Then exclui os dados no banco de dados
When for clicado botão cancela
then limpa formulário

