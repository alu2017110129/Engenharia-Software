Feature: Classificação Perfis Profisionais Migrantes

Background:
When Usuario estar logado no sistema
And usuário ser admin do sistema
And usuário tiver permissão de acesso ao cadastro de Usuários
 
Scenario: Atribuir pontuação perfil
Given acessar tela de classificação de perfil
Then atribuir pontuação dados cadastrais 
And atribuir pontuação a documentação
And atribuir pontuação formação
And atribuir pontuação experiancia profissional
And todos os campos obritórios estejam preenchidos
then calcular pontuação total
And atribuir perfil conforme pontuação
And gravar perfil no DB
And gravar pontuação no DB
them mensagem de "Perfil gravado com sucesso"
and limpa formulário
 
Scenario: Alterar pontuação perfil
Given acessar tela de classificação de perfil
Then atribuir pontuação dados cadastrais 
And atribuir pontuação a documentação
And atribuir pontuação formação
And atribuir pontuação experiancia profissional
And todos os campos obritórios estejam preenchidos
then calcular pontuação total
And atribuir perfil conforme pontuação
And atualizar perfil no DB
And atualizar pontuação no DB
them mensagem de "Perfil alterado com sucesso"
and limpa formulário