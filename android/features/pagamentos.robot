*** Settings ***
Resource ../base.robot

Test Setup Inicializar Aplicativo
Test Teardown Fechar Aplicativo

*** Test Cases ***
Usuário pode visualizar detalhes da seção de pagamentos
Dado que o usuário abriu o aplicativo e está na tela inicial
Quando o usuário selecionar a opção de pagamentos
Então deve ser exibido os detalhes da seção de pagamentos

Usuário pode voltar à tela inicial ao clicar no ícone de fechar na seção de pagamentos
Dado que o usuário está na seção de pagamentos
Quando o usuário clicar no ícone de fechar ${iconeFechar}
Então o aplicativo deve redirecionar o usuário para a tela inicial

Usuário pode voltar à tela inicial ao realizar rolagem para baixo na seção de pagamentos
Dado que o usuário está visualizando a seção de pagamentos
Quando o usuário realizar uma rolagem para baixo ${telaPagamentos}
Então o aplicativo deve retornar para a tela inicial

Usuário deve poder navegar até a seção de pagamentos a partir da página de Conta
Dado que o usuário está na página de Conta do aplicativo
Quando o usuário selecionar a opção de pagamentos na página de Conta
Então o usuário deve ver os detalhes da seção de pagamentos

Usuário deve visualizar as funcionalidades da seção de pagamentos após a navegação
Dado que o usuário está na tela inicial do aplicativo
Quando o usuário acessar a seção de pagamentos
Então todas as funcionalidades da seção de pagamentos devem ser exibidas