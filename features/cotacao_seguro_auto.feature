#language: pt
#encoding: utf-8

Funcionalidade:  Cotação de um seguro auto

Contexto: 
    Dado que estou no site da Youse
    E clico no link Seguro Auto
    E clico no link Cotação Online

@cotacao_seguro_auto
Cenario: Fazer uma cotação de seguro auto
    E informo o nome "Rafael" para cotacao
    E informo que estou fazendo o seguro "pra mim"
    E informo o telefone de contato "11 99999-9999"
    E informo o e-mail de contato "teste@teste.com"
    E clico no botão Próximo Passo

    