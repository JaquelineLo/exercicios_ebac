#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: Dado que eu acesse a EBAC-SHOP

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando eu não selecionar cor, tamanho 
E quantidade do produto
Então deve exibir mensagem de alerta: "Selecione os campos obrigatórios (cor, tamanho e quantidade)".

Cenário: Deve permitir apenas 10 produtos por venda
Quando eu selecionar 11 produtos para compra
Então deve exibir mensagem de alerta: "Número máximo de produtos excedido. Selecione 10 por compra".  

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando eu clicar no botão "limpar"
Então deve ficar vazio o carrinho de compras.
