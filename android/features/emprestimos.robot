*** Settings ***
Resource ../base.robot

Test Setup 
Test Teardown

*** Test Cases ***
Usuário deve visualizar detalhes da seção de empréstimos
Dado que o usuário abriu o aplicativo e está na tela inicial
Quando o usuário selecionar a opção de empréstimos
Então as informações sobre empréstimos devem ser exibidas

Usuário deve conseguir acessar a página de empréstimos pela área de Conta
Dado que o usuário está na área de Conta do aplicativo
Quando o usuário selecionar a opção de empréstimos
Então a seção de empréstimos deve ser exibida com todas as suas funcionalidades

Usuário deve retornar à tela inicial ao fechar a seção de empréstimos
Dado que o usuário está na seção de empréstimos
Quando o usuário selecionar o botão de voltar
Então o aplicativo deve retornar à tela inicial

Usuário deve ver a mensagem de saldo de empréstimo disponível ao acessar a página inicial
Dado que o usuário abriu o aplicativo e está na página inicial
Quando o usuário visualizar a seção de empréstimos
Então deve ver a mensagem indicando quanto tem disponível para empréstimos

Usuário deve acessar a seção de empréstimos ao clicar na mensagem de saldo disponível
Dado que o usuário está na página inicial do aplicativo
Quando o usuário clicar na mensagem que indica o saldo de empréstimo disponível
Então a seção de empréstimos deve ser exibida

Usuário deve visualizar mensagem de não possuir empréstimos
Dado que o usuário abriu o aplicativo e está na página inicial
Quando o usuário acessar a seção de empréstimos
Então deve ver uma mensagem informando que não possui empréstimos

Usuário deve acessar a seção de empréstimos ao scrollar para baixo na página inicial
Dado que o usuário está na página inicial do aplicativo
Quando o usuário realizar uma rolagem para baixo
Então a seção de empréstimos deve ser exibida

Usuário deve retornar à tela inicial ao clicar no botão de voltar da seção de empréstimos
Dado que o usuário está na seção de empréstimos
Quando o usuário clicar no botão de voltar
Então o aplicativo deve retornar à tela inicial