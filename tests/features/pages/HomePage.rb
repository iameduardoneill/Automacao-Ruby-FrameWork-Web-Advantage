class HomePage < SitePrism::Page
set_url '/#/'
element :btnLogin, '#menuUser'

def  clickLogin
    wait_until_btnLogin_visible
    btnLogin.click
end







end