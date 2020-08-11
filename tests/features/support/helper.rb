module Helper

    def screenShot(name_file, result)
        xpath = "screenshots/test_#{result}"
        shot = "#{xpath}/#{name_file}.png"
        page.save_screenshot(shot)
        #attach(shot,'image/png')
    end
end
