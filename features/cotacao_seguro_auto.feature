#language: pt
#encoding: utf-8

Funcionalidade:  Cotação de um seguro auto

Contexto: 
    Dado que estou no site da Youse
    E clico no link Seguro Auto
    E clico no link Cotação Online

@cotacao_seguro_auto
Cenario: Fazer uma cotação de seguro auto
    Quando informo o nome "Rafael" para cotacao
    E informo que estou fazendo o seguro "pra mim"
    E informo o telefone de contato "11 99999-9999"
    E informo o e-mail de contato "a@teste.com"
    E clico no botão Sobre o Veículo
    E seleciono a marca do carro como "CHEVROLET"
    E seleciono o modelo do carro como "CELTA"
    E seleciono o ano do carro como "2010"
    E seleciono a versão do carro como "CELTA LIFE / LS 1.0 MPFI 8V FLEXPOWER 5P (Gasolina / Flex)"
    E seleciono que o uso do carro é "particular"
    E seleciono que eu "já tenho" o carro
    E seleciono que "já estou utilizando" o carro
    E informo que carro dorme no CEP "01317000"
    E seleciono que eu "sou" a pessoa que passa mais tempo dirigindo o carro
    E seleciono que sou do sexo "masculino"
    E seleciono que minha data de nascimento é "08/12/1987"
    E seleciono que "nunca tive" sinistro
    E clico no botão Próximo Passo
    E clicar no botão Prosseguir
    E clico no botão Próximo Passo
    E informo que meu nome completo é "Rafael de Sousa Silva Ponzio"
    E informo que meu CPF é "36420521858"
    E seleciono que nasci no "Brasil"
    E informo que trabalho como "Analista de sistemas"
    E seleciono que minha renda familiar é "Acima de R$ 7.000,00"
    E informo que moro no cep "01317000"
    E informo que moro no endereço "Av. Brigadeiro Luis Antonio"
    E informo que moro no numero "323"
    E informo que moro no complemento "Apto 602"
    E informo que moro no bairro "Bela Vista"
    E clico no botão Próximo Passo
    E informo a placa do carro como "NOL9207"
    E informo que "não é" blindado
    E clico no botão Contrate Agora
    Entao a pagina de pagamento é exibida

    



    