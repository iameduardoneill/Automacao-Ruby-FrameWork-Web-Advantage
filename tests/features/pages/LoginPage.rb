class LoginPage < SitePrism::Page

    element :btnLogar, '#sign_in_btnundefined'
    
    def realizarLogin(username , pass)
        fill_in(name: 'username', with: username )
        sleep(3)
        fill_in(name: 'password', with: pass )
        sleep(3)
    end    

    def clicarSignIn
        btnLogar.click
    end  

    def criarConta
        sleep(3)
        click_on('CREATE NEW ACCOUNT')
    end

end