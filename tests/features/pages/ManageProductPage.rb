class ManageProductPage < SitePrism::Page

def primeiraOferta
click_on('buy_now')
end    

def quantidade(valor)
quant = valor.to_i
for i in 1..quant-1
    find(:xpath, '//*[@id="productProperties"]/div[2]/e-sec-plus-minus/div/div[3]').click
end
sleep(5)  
end

end