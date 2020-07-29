#language: pt
Funcionalidade: Adicionar Produto
Adicionar produto ao carrinho

Cenario: Realizar login e adicionar carinho
  Dado que estou com a aplicacao
  Quando eu clico no link do login 
  Entao eu insiro UserName and Password
  
  |username   |eduardotest |
  |password   |Rathitman1**|
  
  E clico no botao logar 
  E valido na barra superior username
  Dado estou selecionando a categoria do produto

  |categoria |TABLETS  |

  E clicar no botao da primeira oferta de produto 
  E seleciona a quantidade desejada
 
  |quantidade| 7 |