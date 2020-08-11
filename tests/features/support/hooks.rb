After do |scenario|
     scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_') 
     if scenario.failed? 
        screenShot(scenario_name.downcase!, 'falhou') 
    else 
        screenShot(scenario_name.downcase!, 'passou')
     end
    end

