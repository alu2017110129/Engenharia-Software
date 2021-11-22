Feature: Login do sistema

  Background:
    Given Tela de login esteja aberta
    And campo de 'email' esteja em branco
    And o campo 'senha' esteja em branco

  Scenario: Erro quando campos em branco
    When clicar 'enter'
    Then field 'email' vazio
    And field 'password' vazio

  Scenario: Senha incorreta
    When preenchido campo 'email'
    And digitado "senha"
    And I click on 'enter'
	Then verifica dados no DB = 'False'
    Then apresenta mensagem 'E-mail ou senha está incorreto!'

  Scenario: Login successfully
	When preenchido campo 'email'
    And digitado "senha"
    And I click on "enter"
	Then verifica dados no DB = 'True'
    Then acessa modulo "Menu Principal"