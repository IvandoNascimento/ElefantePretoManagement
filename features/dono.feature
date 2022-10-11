Feature: Dono
  As a Dono
  I want to adicionar, remover, visualizar e editar meu cadastro, logar e deslogar
  So that eu possa ter controle dos meus dados e do sistema

  Scenario: cadastrar dono com sucesso
    Given estou na pagina de dono
    When eu preencho o dono de nome: 'Alex Camilo', cpf: '161169850-25', cnpj: '44998543000115', email: 'teste@teste', password: '12345678', password_confirmation: '12345678' e clico cadastrar
    Then eu vejo uma mensagem que o dono foi cadastrado com sucesso

  Scenario: cadastrar dono com nome invalido
    Given estou na pagina de dono
    When eu preencho o dono de nome: 'A', cpf: '161169850-25', cnpj: '44998543000115', email: 'teste@teste', password: '12345678', password_confirmation: '12345678' e clico cadastrar
    Then eu vejo uma mensagem de erro de nome invalido

  Scenario: editar cadastro com sucesso
    Given estou na pagina index de dono
    And o dono de nome: 'Alex Camilo', cpf: '84127420014', cnpj: '82867923000100' existe
    When eu edito o nome do dono : 'Alex Camilo' para : 'Alex Camilo de Melo' e clico atualizar
    Then eu vejo uma mensagem que o dono foi editado com sucesso

  Scenario: editar cadastro com nome invalido
    Given estou na pagina index de dono
    And o dono de nome: 'Alex Camilo', cpf: '84127420014', cnpj: '82867923000100' existe
    When eu edito o nome do dono : 'Alex Camilo' para : 't' e clico atualizar
    Then eu vejo uma mensagem de erro de nome invalido

    Scenario: remover um dono com sucesso
      Given estou na pagina index de dono
      And o dono de nome: 'Alex Camilo', cpf: '84127420014', cnpj: '82867923000100' existe
      When eu removo o dono de nome: 'Alex Camilo'
      Then eu vejo uma mensagem que o dono foi removido com sucesso
