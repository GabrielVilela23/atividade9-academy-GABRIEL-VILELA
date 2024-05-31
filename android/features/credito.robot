*** Settings ***
Resource ../base.robot

Test Setup Inicializar Aplicativo
Test Teardown Fechar Aplicativo

*** Test Cases ***
Usuário deve visualizar informações do cartão de crédito
Dado que o usuário abriu o aplicativo e está na tela inicial
Quando o usuário selecionar a seção de cartão de crédito
Então as informações sobre o cartão de crédito devem ser exibidas

Usuário deve acessar a página de funcionalidades do cartão de crédito
Dado que o usuário está na página inicial do aplicativo
Quando o usuário navegar para a seção de cartão de crédito
Então as funcionalidades do cartão de crédito devem estar disponíveis

Usuário deve retornar à tela inicial ao fechar a seção de cartão de crédito
Dado que o usuário está na seção de cartão de crédito
Quando o usuário selecionar a opção de voltar
Então o aplicativo deve retornar à tela inicial

Usuário deve ver detalhes da fatura do cartão de crédito
Dado que o usuário abriu o aplicativo e está na página inicial
Quando o usuário acessar a seção de fatura do cartão de crédito
Então as informações detalhadas da fatura devem ser exibidas

Usuário deve acessar o histórico de transações do cartão de crédito
Dado que o usuário está na página inicial do aplicativo
Quando o usuário selecionar a opção de histórico do cartão de crédito
Então o histórico de transações deve ser exibido

Usuário deve fechar a seção de histórico de cartão de crédito e retornar à página inicial
Dado que o usuário está na seção de histórico de cartão de crédito
Quando o usuário selecionar a opção de voltar
Então o aplicativo deve retornar à página inicial

Usuário deve ver a opção de pagamentos ao acessar a seção de cartão de crédito
Dado que o usuário abriu o aplicativo e está na página inicial
Quando o usuário acessar a seção de cartão de crédito
Então as opções de pagamento do cartão devem ser exibidas