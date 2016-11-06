Dado(/^que estou no site da Youse$/) do
  visit 'https://www.youse.com.br'
end

Quando(/^clico no botão Entrar$/) do
  login = Login.new
  login.clicar_botao_entrar
end

Então(/^estou logado na Youse$/) do
  login = Login.new
  login.validar_login
end

