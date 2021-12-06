Feature: Cadastrar Aluno
  Scenario: Inicio do Programa
    Given o app iniciou
    And foi criado o Controller
    And chamado o metodo de criacao
    Then o aluno foi salvo no repository

Feature: Listar Alunos
  Scenario: Inicio do Programa
    Given o app iniciou
    And foi criado o Controller
    And chamado o metodo de criacao
    Then o aluno foi excluido no repository

Feature: Excluir Aluno
  Scenario: Inicio do Programa
    Given o app iniciou
    And chamado o metodo de criacao
    Then o aluno foi excluido no repository

Feature: Alterar Aluno
  Scenario: Inicio do Programa
    Given o app iniciou
    And foi criado o Controller
    And chamado o metodo de criacao
    Then o aluno foi alterado no repository
