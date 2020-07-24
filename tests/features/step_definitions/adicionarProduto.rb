

Dado('que estou com a aplicacao') do
  visit 'http://www.advantageonlineshopping.com/'
  expect(page).to have_current_path('http://www.advantageonlineshopping.com/', url: true)
end

Quando('eu clico no link do login') do
  find(:id,'menuUser').click
end

Entao('eu insiro UserName and Password') do |table|
  fill_in(name: 'username', with: table.rows_hash['username'].to_s )
  fill_in(name: 'password', with: table.rows_hash['password'].to_s )
end

Entao('clico no botao logar') do
  find(:id, 'sign_in_btnundefined').click  
end

Entao('valido na barra superior username') do
   valida = find(:xpath, '//*[@id="menuUserLink"]/span')
   expect(valida.text).to eql 'eduardotest'
   sleep(15)
end

Dado('estou selecionando a categoria do produto') do
    
end
