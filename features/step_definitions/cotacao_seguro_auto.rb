Dado(/^clico no link Seguro Auto$/) do
  navbar = Navbar.new
  navbar.clicar_link_seguro_auto
end

Dado(/^clico no link Cotação Online$/) do
  cotacao = Cotacao.new
  cotacao.clicar_botao_cotacao_online
end

Dado(/^informo o nome "([^"]*)" para cotacao$/) do |nome|
  cotacao = Cotacao_dadosPessoais.new
  cotacao.preencher_nome(nome)
end

Dado(/^informo que estou fazendo o seguro "([^"]*)"$/) do |proprietario|
  cotacao = Cotacao_dadosPessoais.new
  cotacao.preencher_proprietario_seguro(proprietario)
end

Dado(/^informo o telefone de contato "([^"]*)"$/) do |tel|
  cotacao = Cotacao_dadosPessoais.new
  cotacao.preencher_telefone(tel)
end

Dado(/^informo o e\-mail de contato "([^"]*)"$/) do |email|
  cotacao = Cotacao_dadosPessoais.new
  cotacao.preencher_email(email)
end

Quando(/^clico no botão Sobre o Veículo$/) do
  cotacao = Cotacao.new
  cotacao.clicar_botao_sobre_o_veiculo
end

Dado(/^clico no botão Próximo Passo$/) do
  cotacao = Cotacao.new
  cotacao.clicar_botao_proximo_passo
end

Quando(/^seleciono a marca do carro como "([^"]*)"$/) do |marca|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_marca_carro(marca)
end

Quando(/^seleciono o modelo do carro como "([^"]*)"$/) do |modelo|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_modelo_carro(modelo)
end

Quando(/^seleciono o ano do carro como "([^"]*)"$/) do |ano|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_ano_carro(ano)
end

Quando(/^seleciono a versão do carro como "([^"]*)"$/) do |versao|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_versao_carro(versao)
end

Quando(/^seleciono que o uso do carro é "([^"]*)"$/) do |tipo_uso|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_tipo_uso(tipo_uso)
end

Quando(/^seleciono que eu "([^"]*)" o carro$/) do |posse|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_posse_carro(posse)
end

Quando(/^seleciono que "([^"]*)" o carro$/) do |utilizacao|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_utilizacao_carro(utilizacao)
end

Quando(/^informo que carro dorme no CEP "([^"]*)"$/) do |cep|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_cep_carro(cep)
end

Quando(/^seleciono que eu "([^"]*)" a pessoa que passa mais tempo dirigindo o carro$/) do |quem|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_quem_dirigi_mais(quem)
end

Quando(/^seleciono que sou do sexo "([^"]*)"$/) do |sexo|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_sexo(sexo)
end

Quando(/^seleciono que minha data de nascimento é "([^"]*)"$/) do |nascimento|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_data_nascimento(nascimento)
end

Quando(/^seleciono que "([^"]*)" sinistro$/) do |sinistro|
  cotacao_veiculo = Cotacao_dadosVeiculo.new
  cotacao_veiculo.preencher_sinistro(sinistro)
end

Quando(/^clicar no botão Prosseguir$/) do
  cotacao = Cotacao.new
  cotacao.clicao_botao_prosseguir
end

Quando(/^informo que meu nome completo é "([^"]*)"$/) do |nome_completo|
  cotacao_pag = Cotacao_Pagamento.new
  cotacao_pag.preencher_nome_completo(nome_completo)
end

Quando(/^informo que meu CPF é "([^"]*)"$/) do |cpf|
  cotacao_pag = Cotacao_Pagamento.new
  cotacao_pag.preencher_cpf(cpf)
end

Quando(/^seleciono que nasci no "([^"]*)"$/) do |nacionalidade|
  cotacao_pag = Cotacao_Pagamento.new
  cotacao_pag.preencher_nacionalidade(nacionalidade)
end

Quando(/^informo que trabalho como "([^"]*)"$/) do |profissao|
  cotacao_pag = Cotacao_Pagamento.new
  cotacao_pag.preencher_profissao(profissao)
end

Quando(/^seleciono que minha renda familiar é "([^"]*)"$/) do |renda|
  cotacao_pag = Cotacao_Pagamento.new
  cotacao_pag.preencher_renda_familiar(renda)
end

Quando(/^informo que moro no cep "([^"]*)"$/) do |cep|
  cotacao_pag = Cotacao_Pagamento.new
  cotacao_pag.preencher_cep(cep)
end

Quando(/^informo que moro no endereço "([^"]*)"$/) do |endereco|
  cotacao_pag = Cotacao_Pagamento.new
  cotacao_pag.preencher_endereco(endereco)
end

Quando(/^informo que moro no numero "([^"]*)"$/) do |numero|
  cotacao_pag = Cotacao_Pagamento.new
  cotacao_pag.preencher_endereco_numero(numero)
end

Quando(/^informo que moro no complemento "([^"]*)"$/) do |complemento|
  cotacao_pag = Cotacao_Pagamento.new
  cotacao_pag.preencher_endereco_complemento(complemento)
end

Quando(/^informo que moro no bairro "([^"]*)"$/) do |bairro|
  cotacao_pag = Cotacao_Pagamento.new
  cotacao_pag.preencher_endereco_bairro(bairro)
end

Quando(/^informo a placa do carro como "([^"]*)"$/) do |placa|
  cotacao_dados = Cotacao_dadosVeiculo.new
  cotacao_dados.preencher_placa(placa)
end

Quando(/^informo que "([^"]*)" blindado$/) do |blindagem|
  cotacao_dados = Cotacao_dadosVeiculo.new
  cotacao_dados.preencher_blindagem(blindagem)
end

Quando(/^clico no botão Contrate Agora$/) do
  cotacao = Cotacao.new
  cotacao.clicao_botao_contrate_agora
  sleep 10
end

Entao(/^a pagina de pagamento é exibida$/) do
  cotacao_pag = Cotacao_Pagamento.new
  cotacao_pag.validar_pagina_pagamento
end
