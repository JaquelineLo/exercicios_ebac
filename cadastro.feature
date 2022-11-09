            #language: pt

            Funcionalidade: Tela de Cadastro Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a página de cadastro da EBAC-SHOP

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu não preencher um dos dados marcados com asterisco
            Então deve apresentar a mensagem de alerta "Os campos com asterisco são de preenchimento obrigatório"

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu digitar no campo e-mail "maria.ebac.br"
            Então deve apresentar a mensagem de erro "Campo e-mail inválido, insira um e-mail com o formato name@ebac.com.br".

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu não preencher em um dos campos do cadastro
            Então deve exibir uma mensagem de alerta: "Preencher todos os campos do cadastro"

            Esquema do Cenário: Cadastro dos usuários na EBAC-SHOP
            Quando eu digitar <nome>, <sobrenome>, <pais>, <Cidade> <CEP>, <telefone>
            E <endereco de e-mail>
            Então deve exibir a mensagem " Cadastro feito com sucesso"

            Exemplos:
            | nome    | sobrenome | país     | Cidade                | CEP      | telefone        | endereço de e-mail  |
            | "Joao"  | "Silva"   | "Brasil" | "Guarulhos"           | 02587900 | (11) 99999-8888 | "joao@ebac.com.br"  |
            | "Maria" | "Santos"  | "Brasil" | "Campinas"            | 33358000 | (11) 99999-7777 | "maria@ebac.com.br" |
            | "Julia" | "Pereira" | "Brasil" | "São José dos Campos" | 76000201 | (12) 99999-8888 | "julia@ebac.com.br" |
            | "Luiz"  | "Fontes"  | "Brasil" | "Niterói"             | 06520487 | (21) 99999-8888 | "luiz@ebac.com.br"  |