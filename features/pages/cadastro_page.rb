class CadastroPage < SitePrism::Page
    set_url '?controller=authentication&back=my-account'
    element :email_create_account_field, '#email_create'
    element :create_account_btn, '#SubmitCreate'
    element :title_fem_rd, '#id_gender2'
    element :first_name_field, '#customer_firstname'
    element :last_name_field, '#customer_lastname'
    element :password_field, '#passwd'
    element :day_select, '#uniform-days'
    element :month_select, '#uniform-months'
    element :year_select, '#uniform-years'
    element :newsletter_checkbox, '#uniform-newsletter'
    element :address_field, '#address1'
    element :city_field, '#city'
    element :state_select, '#uniform-id_state'
    elements :state_options, '#uniform-id_state option'
    element :zip_code_field, '#postcode'
    element :mobile_phone_field, '#phone_mobile'
    element :address_alias_field, '#alias'
    element :register_btn, '#submitAccount'

    # @ - variável de instância (ao terminar a execução do seu escopo ela deixa de existir)
    # @@ - variável de classe (no ciclo de vida da classe)
    # $ - variável de escopo global 

    def iniciar_criacao_conta(email)
        puts @email = email.eql?('aleatório') ? Faker::Internet.email(domain: 'guts') : email
        email_create_account_field.set @email
        create_account_btn.click  
    end

    def preencher_form_com_dados_fixos
        title_fem_rd.set true
        @@first_name = 'Lilian'
        first_name_field.set @@first_name
        @@last_name = 'Affonso'
        last_name_field.set @@last_name
        password_field.set '123456'
        day_select.select '16'
        month_select.select 'January'
        year_select.select '1990'
        newsletter_checkbox.click
        address_field.set 'Rua das Flores, 45'
        city_field.set 'Campinas'
        state_select.click
        option = state_options.find {|option| option.text.include? ("California")}
        option.click
        zip_code_field.set '45676'
        mobile_phone_field.set '5551988776655'
        address_alias_field.set 'Casa'
    end

    def preencher_form_com_dados_aleatorios
        title_fem_rd.set true
        @@first_name = Faker::Name.first_name
        first_name_field.set @@first_name
        @@last_name = Faker::Name.last_name
        last_name_field.set @@last_name
        password_field.set Faker::Internet.password(min_length: 5, max_length: 10, mix_case: true, special_characters: true)
        day_select.select '16'
        month_select.select 'January'
        year_select.select '1990'
        newsletter_checkbox.click
        address_field.set 'Rua das Flores, 45'
        city_field.set 'Campinas'
        state_select.click
        option = state_options.find {|option| option.text.include? ("California")}
        option.click
        zip_code_field.set '45676'
        mobile_phone_field.set Faker::PhoneNumber.cell_phone_in_e164
        address_alias_field.set 'Casa'
    end

    def confirmar_cadastro
        register_btn.click
    end 

    def account_full_name
        "#{@@first_name} #{@@last_name}"
    end

end
