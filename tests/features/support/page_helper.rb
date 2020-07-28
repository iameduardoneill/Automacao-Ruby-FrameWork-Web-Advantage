Dir[File.join(File.dirname(__FILE__), '../pages/*Page.rb')].each { |file| require file }

module PageObject

    def homePage
        homePage ||= HomePage.new
    end

    def loginPage
        loginPage ||= LoginPage.new
    end    

    def manageProductPage
        manageProductPage ||= ManageProductPage.new
    end    
end