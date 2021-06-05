class MinhaContaPage < SitePrism::Page
    set_url '?controller=my-account'

    element :page_title, '.page-heading'
    element :account_name, '[title= "View my customer account"]'

    #def acessou_minha_conta
    #   page_title.text.eql?('M ACCOUNT') && account_name.text.eql?('Lilian Affonso')
    #end

end

