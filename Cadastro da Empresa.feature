Feature: Cadastro da Empresa

Background: 
When Usuario estar logado no sistema
And usuário tiver permissão de acesso ao cadastro das Empresas

  
Scenario: adicionar nova Empresa
Given o formulario de cadastro esteja aberto
And todos os campos obritórios estejam preenchidos
And a validação dos dados esteja correta
When for clicado no botão de Gravar
Then grava os dados no banco de dados
Then gera documento para validação dos dados pela Empresa
When for clicado botão Cancela
and confimado o cancelamento
Then limpa o formulario de cadastro

Scenario: Alterar uma Empresa já cadastradas
Given digitar um código / CNPJ da Empresa 
And o código/CNPJ for de uma Empresa cadastrada
Then abra formulario de alteração com os dados da Empresa
And todos os campos obrigatórios estejam preenchidos
And os dados sejam válidos
When for clicado em confima alteração
Then grava os dados no banco de dados
When for clicado botão Cancela
and confimado o cancelamento
Then limpa formulário

Scenario: Excluir uma Empresa já cadastrada
Given digitar um código / CNPJ do Empresa 
And o código se de um Empresa cadastrada
And for confirmado se é a Empresa correta a excluir
When for clicado em confima excluir
Then exclui os dados no banco de dados
When for clicado botão cancela
then limpa formulário

