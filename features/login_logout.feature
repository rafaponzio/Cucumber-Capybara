#language: pt
#encoding: utf-8

Funcionalidade:  Fazer login e logout no site da Youse
Contexto: 
    Dado que estou no site da Youse

@login
Cenario: login válido
    E clico no link Minha Conta
    E informo o e-mail "ttaaaddd@gasdail.com"
    E clico no botão Próximo Passo
    E informo a senha "12345678"
    Quando clico no botão Entrar
    Então estou logado na Youse
