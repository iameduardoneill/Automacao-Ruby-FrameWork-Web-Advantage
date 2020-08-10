class HomePage < SitePrism::Page
set_url '/#/'
element :btnLogin, '#menuUser'

element :catSpeakers, '#speakersLink'
element :catTables, '#tabletsTxt'
element :catLaptops, '#laptopsTxt'
element :catMice, '#miceTxt'
element :catHeadphones, '#headphonesTxt'


def  clickLogin
wait_until_btnLogin_visible
btnLogin.click
end

def getLoggerInUser
page.has_text?('eduardotest')
end    

def selecionarCategoria(cat)
    
   case cat
    when "SPEAKERS" 
        puts 'speakers'
        wait_until_catSpeakers_visible
        catSpeakers.click

    when "TABLETS"
        puts 'tablets'
        wait_until_catTables_visible
        catTables.click

    when "LAPTOPS"
        puts 'laptops'
        wait_until_catLaptops_visible
        catLaptops.click

    when "MICE"
        puts 'mice'
        wait_until_catMice_visible
        catMice.click

    when "HEADPHONES"
        puts 'headphone'
        wait_until_catHeadphones_visible
        catHeadphones.click
    else
        puts 'nenhuma categoria selecionada!'
    end
end
end