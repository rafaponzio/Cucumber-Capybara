Dado(/^clico no link Minha Conta$/) do
  navbar = Navbar.new
  navbar.clicar_link_minha_conta
end

Dado(/^clico no link Cadastre\-se$/) do
  cadastro = Cadastro.new 
  cadastro.clicar_link_cadastre_se
end

Dado(/^informo o e\-mail "([^"]*)"$/) do |email|
  cadastro = Cadastro.new 
  cotacao = Cotacao.new
  @email = email

  cadastro.preencher_email(@email)
end

Dado(/^informo o nome "([^"]*)"$/) do |nome|
  cadastro = Cadastro.new 
  cadastro.preencher_nome(nome)
end

Dado(/^informo a senha "([^"]*)"$/) do |senha|
  cadastro = Cadastro.new 
  @senha = senha
  cadastro.preencher_senha(@senha)
end

Dado(/^confirmo a senha$/) do
  cadastro = Cadastro.new 
  cadastro.preencher_confirmacao_senha(@senha)
end

Quando(/^clico no botão Enviar Cadastro$/) do
  cadastro = Cadastro.new 
  cadastro.clicar_botao_enviar_cadastro
end
