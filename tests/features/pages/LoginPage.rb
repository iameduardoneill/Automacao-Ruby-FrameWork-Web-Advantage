class LoginPage < SitePrism::Page
    set_url '/#/'
    element :btnLogar, '#sign_in_btnundefined'

    def btnLogar
        btnLogar.click
    end    



    #element :nome, '#nome'
    #def preencherUsername
        #nome.set 'edu'
    #end

#def realizarLogin (username, password)
#preencherUsername(username)
#preencherPassword(password)
#end

#def preencherUsername (username)
#fill_in(name: 'username', wiht: username)
   
   #fill_in(name: 'username', with: table.rows_hash['username'].to_s )
#end

#def preencherPassword (password)
#   fill_in(name: 'password',wiht: password)
   
   #fill_in(name: 'password', with: table.rows_hash['password'].to_s )
#end






end