#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: Dado que eu acesse a página de autenticação da EBAC-SHOP

Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
Quando eu digitar o usuário "maria@ebac.com.br"
E a senha "teste@123"
Então deve ser direcionado para a tela de checkout

Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
Quando eu digitar o usuário "maria@ebac.com.br"
E senha "teste567"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"
