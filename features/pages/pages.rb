class Navbar
    include Capybara::DSL
    def navbar
        find('ul', :class => 'nav__list')
    end

    def clicar_link_sobre_a_youse
        navbar.click_link('Sobre a Youse')
    end

    def clicar_link_seguro_residencial
        navbar.click_link('Seguro Residencial')
    end

    def clicar_link_seguro_auto
        navbar.click_link('Seguro Auto')
    end

    def clicar_link_seguro_vida
        navbar.click_link('Seguro Vida')
    end

    def clicar_link_minha_conta
        click_link('Minha Conta')
    end
end

class Cadastro
    include Capybara::DSL

    def clicar_link_cadastre_se
        click_link('Cadastre-se')
    end

    def preencher_nome(nome)
        fill_in('user_name', with: "#{nome}")
    end

    def preencher_email(email)
        fill_in('user_email', with: "#{email}")
    end

    def preencher_senha(senha)
        fill_in('user_password', with: "#{senha}")
    end

    def preencher_confirmacao_senha(senha)
        fill_in('user_password_confirmation', with: "#{senha}")
    end

    def clicar_botao_enviar_cadastro
        click_button('enviar cadastro')
    end
end

class Cotacao
    include Capybara::DSL

    def clicar_botao_cotacao_online
        click_link('Cotação Online')
    end

    def preencher_nome(nome)
        fill_in('auto_order_flow_lead_person_data_lead_person_attributes_name', with: "#{nome}")
    end

    def preencher_proprietario_seguro(proprietario)
        select "#{proprietario}", from: 'auto_order_flow_lead_person_data_insured_person_attributes_same_as_lead_person'
    end

    def preencher_telefone(tel)
        fill_in('auto_order_flow_lead_person_data_lead_person_attributes_phone', with: "#{tel}")
    end

    def preencher_email(email)
        fill_in('auto_order_flow_lead_person_data_lead_person_attributes_email', with: "#{email}")
    end

    def clicar_botao_sobre_o_veiculo
        click_button('sobre o veículo')
    end
end
 
