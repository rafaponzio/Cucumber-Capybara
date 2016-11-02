Dado(/^clico no link Seguro Auto$/) do
  navbar = Navbar.new
  navbar.clicar_link_seguro_auto
end

Dado(/^clico no link Cotação Online$/) do
  cotacao = Cotacao.new
cotacao.clicar_botao_cotacao_online
sleep 10
end

Dado(/^informo o nome "([^"]*)" para cotacao$/) do |nome|
  cotacao = Cotacao.new
  cotacao.preencher_nome(nome)
end

Dado(/^informo que estou fazendo o seguro "([^"]*)"$/) do |proprietario|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado(/^informo o telefone de contato "([^"]*)"$/) do |tel|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado(/^informo o e\-mail de contato "([^"]*)"$/) do |email|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado(/^clico no botão Próximo Passo$/) do
  pending # Write code here that turns the phrase above into concrete actions
end