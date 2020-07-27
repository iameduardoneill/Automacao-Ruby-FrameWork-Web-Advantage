class HomePage < SitePrism::Page
set_url '/#/'
element :btnLogin, '#menuUser'

def  clickLogin
wait_until_btnLogin_visible
btnLogin.click
end

def getLoggerInUser
page.has_text?('eduardotest')
end    

def  selecionarCategoria(categoria)

    case categoria

    when SPEAKERS
        puts 'speakers'

    when TABLETS
        puts 'tablets'

    when LAPTOPS
        puts 'laptops'

    when MICE
        puts 'mice'

    when HEADPHONES
        puts 'headphone'
        
    else
        puts 'nenhuma categoria selecionada!'
    end


end









end