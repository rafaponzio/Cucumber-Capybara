class Navbar
    include Capybara::DSL
    include RSpec::Matchers

    def navbar
        find('ul', :class => 'nav__list')
    end

    def clicar_link_sobre_a_youse
        navbar.click_link('Sobre a Youse')
        $page_change = true
    end

    def clicar_link_seguro_residencial
        navbar.click_link('Seguro Residencial')
        $page_change = true
    end

    def clicar_link_seguro_auto
        navbar.click_link('Seguro Auto')
        $page_change = true
    end

    def clicar_link_seguro_vida
        navbar.click_link('Seguro Vida')
        $page_change = true
    end

    def clicar_link_minha_conta
        click_link('Minha Conta')
        $page_change = true
    end

end

class Login
    include Capybara::DSL
    include RSpec::Matchers

    def clicar_botao_entrar
        click_button('entrar')
        $page_change = true
    end

    def validar_login
        expect(find(:xpath, '/html/body/header/div[1]/nav/ul/li/a')['data-email']).to eq("#{$email}")
    end
end

class Cadastro
    include Capybara::DSL

    def clicar_link_cadastre_se
        click_link('Cadastre-se')
        $page_change = true
    end

    def preencher_nome(nome)
        fill_in('user_name', with: "#{nome}")
    end

    def preencher_email(email)
        $email = email
        if has_field?('user_email', wait: 1)
            fill_in('user_email', with: "#{email}")
        else
            fill_in('email', with: "#{email}")
        end
    end

    def preencher_senha(senha)
        fill_in('user_password', with: "#{senha}")
    end

    def preencher_confirmacao_senha(senha)
        fill_in('user_password_confirmation', with: "#{senha}")
    end

    def clicar_botao_enviar_cadastro
        click_button('enviar cadastro')
        $page_change = true
    end
end

class Cotacao 
    include Capybara::DSL
    
    def clicar_botao_cotacao_online
        click_link('Cotação Online')
        $page_change = true
    end

    def clicar_botao_proximo_passo
        click_button('róximo passo')
        $page_change = true
    end

    def clicar_botao_sobre_o_veiculo
        if has_button?('sobre o veículo', wait: 1)
            click_button('sobre o veículo')
        else
            self.clicar_botao_proximo_passo
        end
        $page_change = true
    end

    def clicao_botao_prosseguir
        click_button('prosseguir')
        $page_change = true
    end
    
    def clicao_botao_contrate_agora
        click_button('contrate agora')
        $page_change = true
    end

end

class Cotacao_dadosPessoais
    include Capybara::DSL

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

end

class Cotacao_dadosVeiculo
    include Capybara::DSL

    def preencher_marca_carro(marca)
        select "#{marca}", from: 'auto_order_flow_pricing_requirements_vehicle_attributes_make', match: :first
    end
    
    def preencher_modelo_carro(modelo)
        select "#{modelo}", from: 'auto_order_flow_pricing_requirements_vehicle_attributes_model'
    end

    def preencher_ano_carro(ano)
        select "#{ano}", from: 'auto_order_flow_pricing_requirements_vehicle_attributes_year'
    end

    def preencher_versao_carro(versao)
        select "#{versao}", from: 'auto_order_flow_pricing_requirements_vehicle_attributes_version'
    end

    def preencher_tipo_uso(tipo_uso)
        select "#{tipo_uso.capitalize}", from: 'auto_order_flow_pricing_requirements_vehicle_attributes_usage'
    end

    def preencher_posse_carro(posse)
        select "#{posse}", from: 'auto_order_flow_pricing_requirements_vehicle_attributes_purchased'
    end

    def preencher_utilizacao_carro(utilizacao)
        select "#{utilizacao}", from: 'auto_order_flow_pricing_requirements_vehicle_attributes_collected'
    end

    def preencher_cep_carro(cep)
        fill_in('auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode', with: "#{cep}")
    end

    def preencher_quem_dirigi_mais(quem)
        select "#{quem}", from: 'auto_order_flow_pricing_requirements_driver_attributes_same_as_insured_person'
    end

    def preencher_sexo(sexo)
        select "#{sexo.capitalize}", from: 'auto_order_flow_pricing_requirements_driver_attributes_gender'
    end

    def preencher_data_nascimento(nascimento)
        fill_in('auto_order_flow_pricing_requirements_driver_attributes_date_of_birth', with: "#{nascimento}")
    end

    def preencher_sinistro(sinistro)
        select "#{sinistro}", from: 'auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim'
    end

    def preencher_placa(placa)
        fill_in('auto_order_flow_vehicle_data_vehicle_attributes_license_plate', with: "#{placa}")
    end

    def preencher_blindagem(blindagem)
        select "#{blindagem}", from: 'auto_order_flow_vehicle_data_vehicle_attributes_bullet_proof'
    end

end

class Cotacao_Pagamento
    include Capybara::DSL
    include RSpec::Matchers

    def preencher_nome_completo(nome_completo)
        fill_in('auto_order_flow_insured_person_data_insured_person_attributes_name', with: "#{nome_completo}")
    end

    def preencher_cpf(cpf)
        fill_in('auto_order_flow_insured_person_data_insured_person_attributes_cpf', with: "#{cpf}")
    end

    def preencher_nacionalidade(nacionalidade)
        select "#{nacionalidade}", from: 'auto_order_flow_insured_person_data_insured_person_attributes_nationality'
    end

    def preencher_profissao(profissao)
        find(:xpath, '/html/body/section[1]/form/fieldset[3]/fieldset[2]/span/span[1]/span/span[1]/span').click
        find(:xpath, '/html/body/span[10]/span/span[1]/input').set profissao
        find('li', text: "#{profissao}").click
    end

    def preencher_renda_familiar(renda)
        select "#{renda}", from: 'auto_order_flow_insured_person_data_insured_person_attributes_salary_range'
    end

    def preencher_cep(cep)
        fill_in('auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_zipcode', with: "#{cep}")
    end

    def preencher_endereco(endereco)
        fill_in('auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_street', with: "#{endereco}")
    end

    def preencher_endereco_numero(numero)
        fill_in('auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number', with: "#{numero}")
    end

    def preencher_endereco_complemento(complemento)
        fill_in('auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_complement', with: "#{complemento}")
    end    

    def preencher_endereco_bairro(bairro)
        fill_in('auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_neighborhood', with: "#{bairro}")
    end 

    def validar_pagina_pagamento
        expect(first('h2').text).to eq('Para finalizar, insira os dados de pagamento.')
    end

end