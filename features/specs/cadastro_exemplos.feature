#language: pt
@regressivo
Funcionalidade: Cadastrar Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efetuar compras

@cadastro_exemplos
Esquema do Cenário: Cadastrar cliente com dados válidos
Dado que acesso a página de login/cadastro
E solicito um novo cadastro para o email <email>
E preencho os campos do formulário com <gender>, <first_name>, <last_name>, <password>, <day>, <month>, <year>, <newsletter>, <address>, <city>, <zipcode>, <state>, <phone>, <address_name>
Quando confirmo o cadastro
Então devo ser direcionado à página de minha conta
Exemplos:
| email                         | gender | first_name | last_name | password   | day  | month   | year   | newsletter | address          | city           | zipcode | state        | phone           | address_name |
| 'paula_ruby_0506214@guts.com' | 'masc' | 'Paula'    | 'Silva'   | '12345678' | '10' | 'March' | '1980' | 'no'       | 'Rua 3, lote 54' | 'São Leopoldo' | '59632' | 'California' | '5551566852242' | 'Casa'       |
| 'joao_ruby_0506214@guts.com'  | 'fem'  | 'João'     | 'Santos'  | '89101112' | '15' | 'April' | '1990' | 'yes'      | 'Rua 2, lote 52' | 'São Paulo'    | '56852' | 'Iowa'       | '5555668546242' | 'Trabalho'   |
