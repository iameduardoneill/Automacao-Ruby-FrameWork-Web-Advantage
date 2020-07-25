Dado('que estou com a aplicacao') do
#homePage = HomePage.new
homePage.load
expect(page).to have_current_path('http://www.advantageonlineshopping.com/#/', url: true)
end

Quando('eu clico no link do login') do
homePage.clickLogin
end

Entao('eu insiro UserName and Password') do |table|
#loginPage = LoginPage.new 
# loginPage.realizarLogin table.rows_hash['username'].to_s , table.rows_hash['password'].to_s
#loginPage.preencherUsername  table.rows_hash['username'].to_s
# loginPage.preencherUsername
 
fill_in(name: 'username', with: table.rows_hash['username'].to_s )
fill_in(name: 'password', with: table.rows_hash['password'].to_s )
end

Entao('clico no botao logar') do
sleep(5)
loginPage.btnLogar  
#find(:id, 'sign_in_btnundefined').click
end

Entao('valido na barra superior username') do
  sleep(5) 
  valida = find(:xpath, '//*[@id="menuUserLink"]/span')
  expect(valida.text).to eql 'eduardotest'
  sleep(10)
end

Dado('estou selecionando a categoria do produto') do
    
end
