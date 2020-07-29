  Quando('clico em CREATE NEW ACCOUNT') do
  loginPage.criarConta
end
  
  E('informo os dados account details') do |table|
    createAccountPage.preencherAccountDetails(table.rows_hash['username'].to_s, table.rows_hash['email'].to_s, table.rows_hash['password'].to_s, table.rows_hash['confirmPassword'].to_s)
end
  
  Quando('informo os dados personal details') do |table|
    sleep(5)
end
  
  Quando('informo o address') do |table|

end