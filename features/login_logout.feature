#language: pt
#encoding: utf-8

Funcionalidade:  Fazer login e logout no site da Youse
Contexto: 
    Dado que estou no site da Youse

@login
Cenario: login válido
    E clico no link Minha Conta
    E informo o e-mail "asd@gasdail.com"
    E clico no botão Próximo Passo
    E informo a senha "12345678"
    Quando clico no botão Entrar
    Então estou logado na Youse
    
@logout
Cenario: login válido
    E estou logado com usuario "asd@gasdail.com" e senha "12345678"
    Quando clico no botao Sair
    Então estou deslogado da Youse