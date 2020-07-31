  Quando('clico em CREATE NEW ACCOUNT') do
  loginPage.criarConta
end
  
  E('informo os dados account details') do |table|
    createAccountPage.preencherAccountDetails(table.rows_hash['username'].to_s, table.rows_hash['email'].to_s, table.rows_hash['password'].to_s, table.rows_hash['confirmPassword'].to_s)
end
  
  Quando('informo os dados personal details') do |table|
    createAccountPage.preencherPersonalDetails(table.rows_hash['firstName'].to_s,table.rows_hash['lastName'].to_s, table.rows_hash['phoneNumber'].to_i)
end
  
  Quando('informo o address') do |table|
    createAccountPage.preencherAddress(table.rows_hash['county'].to_s, table.rows_hash['city'].to_s, table.rows_hash['address'].to_s, table.rows_hash['region'].to_s, table.rows_hash['postalCode'].to_i)
    sleep(5)
end