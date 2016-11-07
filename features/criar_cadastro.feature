#language: pt
#encoding: utf-8

Funcionalidade:  Criar um cadastro no site da Youse

Contexto: 
    Dado que estou no site da Youse
    E clico no link Minha Conta
    E clico no link Cadastre-se

@criar_cadastro_valido
Cenario: Criar cadastro válido
    E informo o nome "asdaaa"
    E informo o e-mail "ttaadd@gasdail.com"
    E informo a senha "12345678"
    E confirmo a senha
    Quando clico no botão Enviar Cadastro
    Então estou logado na Youse
    
