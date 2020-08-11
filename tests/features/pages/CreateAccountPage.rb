class CreateAccountPage < SitePrism::Page

    element :checkBox, 'input[name="i_agree"]'

    def preencherAccountDetails(registryName, registryEmail, registryPassword, registryConfirmPassword)
        fill_in(name: 'usernameRegisterPage' , with: registryName)
        fill_in(name: 'emailRegisterPage', with: registryEmail)
        fill_in(name: 'passwordRegisterPage', with: registryPassword)
        fill_in(name: 'confirm_passwordRegisterPage', with: registryConfirmPassword)
    end

    def preencherPersonalDetails(firstName, lastName, phoneNumber)
        fill_in(name: 'first_nameRegisterPage', with: firstName)
        fill_in(name: 'last_nameRegisterPage', with: lastName)
        fill_in(name: 'phone_numberRegisterPage', with: phoneNumber)
        
    end
    
    def preencherAddress(selectCounty, txtCity, txtAddress, txtRegion, txtPostalCode)
        page.execute_script('window.scrollTo(0, 400);')
        find(:select, "countryListboxRegisterPage").first(:option, selectCounty).select_option
        fill_in(name: 'cityRegisterPage', with: txtCity)
        fill_in(name: 'addressRegisterPage', with: txtAddress)
        fill_in(name: 'state_/_province_/_regionRegisterPage', with: txtRegion)
        fill_in(name: 'postal_codeRegisterPage', with: txtPostalCode)
        checkBox.click
    end    
end
