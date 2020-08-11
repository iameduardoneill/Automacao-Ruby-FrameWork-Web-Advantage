#language: pt
Funcionalidade: Cadastrar Usuario
  
  Cenario: Cadastrar um usuario
  Dado que estou com a aplicacao aberta
  Quando eu clico no link do login 
  E clico em CREATE NEW ACCOUNT
  E informo os dados account details

  |username        | eduardotest               | 
  |email           | rat.hitman01.eh@gmail.com | 
  |password        | Rathitman1**              | 
  |confirmPassword | Rathitman1**              |
  
  E informo os dados personal details
  
  | firstName   | Felipe   |
  | lastName    | Matias   |
  | phoneNumber | 93434394 |
  
  E informo o address

  | county     | Brazil                |
  | city       | Sao Paulo             |
  | address    | Rua Francisco Alvares |
  | region     |   SP                  |
  | postalCode |  02368040             |