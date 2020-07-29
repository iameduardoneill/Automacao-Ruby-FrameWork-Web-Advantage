class CreateAccountPage < SitePrism::Page
    def preencherAccountDetails(registryName, registryEmail, registryPassword, registryConfirmPassword)
        fill_in(name: 'usernameRegisterPage', with: registryName)
        fill_in(name: 'emailRegisterPage', with: registryEmail)
        fill_in(name: 'passwordRegisterPage', with: registryPassword)
        fill_in(name: 'confirm_passwordRegisterPage', with: registryConfirmPassword)
    end





end
