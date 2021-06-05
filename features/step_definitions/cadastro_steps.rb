Dado('que acesso a página de login\/cadastro') do
    @app.Cadastropage.load
end
  
Dado('solicito um novo cadastro para o email {string}') do |email|
    @app.Cadastropage.iniciar_criacao_conta email
end
  
Dado('preencho os campos do formulário com dados válidos fixos') do
    @app.Cadastropage.preencher_form_com_dados_fixos
end
  
Quando('confirmo o cadastro') do
    @app.Cadastropage.confirmar_cadastro
end

Dado('preencho os campos do formulário com dados válidos aleatórios') do
   @app.Cadastropage.preencher_form_com_dados_aleatorios
end

Dado('preencho os campos do formulário com {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}') do |gender, first_name, last_name, password, day, month, year, newsletter, address, city, zipcode, state, phone, address_name|
    @app.Cadastropage.preencher_form_com_dados_de_exemplos(gender, first_name, last_name, password, day, month, year, newsletter, address, city, zipcode, state, phone, address_name)
end

Dado ('preencho os campos do formulário com dados válidos padrão') do
    @app.Cadastropage.preencher_form_com_dados_datafile
end

Então('devo ser direcionado à página de minha conta') do
    #expect(@app.MinhaContapage.acessou_minha_conta). to be_truthy
    expect(@app.MinhaContapage.page_title.text).to eql('MY ACCOUNT')
    expect(@app.MinhaContapage.account_name.text).to eql(@app.Cadastropage.account_full_name)
end