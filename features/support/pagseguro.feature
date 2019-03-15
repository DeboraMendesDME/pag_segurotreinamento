#language: pt

Funcionalidade: Ativação por Depósito, Conta não reconhecida: Erro na mensagem no APP
    Eu como usuario PagSeguro, desejo nao reconhecer uma conta para autenticaçao,
    via deposito e que seja apresentada mensagem clara, para que eu entre no fator de autenticação.


Contexto: Acessar aplicativo.
    Dado que eu esteja na tela de extrato do aplicativo.

Cenário: Ativação por Depósito
    Quando selecionar opção não reconheço essa conta.
    E clicar em confirmo.
    Então apresentar tela de autenticação.

Cenário: Conta não reconhecida
    Quando selecionar opção não reconheço essa conta.
    E clicar no X.
    Então retornar para tela inicial.

Cenário: Tela Inicial
    Dado esteja na tela inicial.
    Quando selecionei botão não reconheço essa conta.
    Então clicar no banner.
    E direcionado ao Fator de autenticação.

Cenário: Ativação de apptoken via depósito
    Quando realizar segunda tentiva apptoken via deposito.
    E clicar no botão não reconheço essa conta,
    Então erro DEPOSIT - DATA_NOT_RECOGNIZED.

Cenário: Erro na mensagem no APP
    Quando acessar botão Ativação apptoken
    Então exiber mensagem: "Quantidade de tentativas excedido"
