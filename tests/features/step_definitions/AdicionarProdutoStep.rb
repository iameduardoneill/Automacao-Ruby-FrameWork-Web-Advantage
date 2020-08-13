Dado('que estou com a aplicacao aberta') do
homePage.load
expect(page).to have_current_path('http://www.advantageonlineshopping.com/#/', url: true)
end

Quando('eu clico no link do login') do
homePage.clickLogin
end

Entao('eu insiro UserName and Password') do |table|
#loginPage.realizarLogin(table.rows_hash['username'].to_s, table.rows_hash['password'].to_s)
loginPage.realizarLoginMassa(DADOS[:usuario][:username],DADOS[:usuario][:password])
end

E('clico no botao logar') do
loginPage.clicarSignIn  
end

E('valido na barra superior username') do
homePage.getLoggerInUser 
end

Dado('estou selecionando a categoria do produto') do |table|
homePage.selecionarCategoria(table.rows_hash['categoria'].to_s)
end

E('clicar no botao da primeira oferta de produto') do
manageProductPage.primeiraOferta   
end
  
E('seleciona a quantidade desejada') do |table|
manageProductPage.quantidade(table.rows_hash['quantidade'].to_s)
end

