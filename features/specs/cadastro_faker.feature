#language: pt

Funcionalidade: Cadastrar Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efetuar compras

@cadastro_dados_faker
Cenário: Cadastrar cliente com dados válidos aleatórios
Dado que acesso a página de login/cadastro
E solicito um novo cadastro para o email 'aleatório'
E preencho os campos do formulário com dados válidos aleatórios
Quando confirmo o cadastro
Então devo ser direcionado à página de minha conta
