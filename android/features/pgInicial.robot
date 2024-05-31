*** Settings ***
Resource ../base.robot

Test Setup Abrir App
Test Teardown Teardown

*** Test Cases ***
Usuário deve conseguir visualizar saldo da conta na página inicial
Dado que o usuário acessou a página inicial do Aplicativo
Quando olhar para a área de saldo da conta
Então o saldo da conta deve estar visível

Usuário deve poder acessar a seção de histórico de transações
Dado que o usuário acessou a página inicial do Aplicativo
Quando clicar no botão de histórico de transações
Então deve ser levado à seção de histórico de transações

Usuário deve poder visualizar a opção de configurar alertas de transações
Dado que o usuário acessou a página inicial do Aplicativo
Quando navegar até a área de configurações
Então deve ser possível ver a opção de configurar alertas de transações

Usuário deve conseguir acessar a seção de suporte ao cliente
Dado que o usuário acessou a página inicial do Aplicativo
Quando clicar no botão de suporte ao cliente
Então deve ser redirecionado para a seção de suporte ao cliente

Usuário deve visualizar a opção de bloquear cartão na página inicial
Dado que o usuário acessou a página inicial do Aplicativo
Quando procurar a opção de segurança
Então deve ser possível ver a opção de bloquear cartão