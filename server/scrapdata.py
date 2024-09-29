from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.action_chains import ActionChains
import time

#this code use for get image source from multicolor of uniqlo store
driver = webdriver.Chrome()
driver.set_window_size(1200,1000)
# url = 'https://www.uniqlo.com/th/th/men'
url = 'https://www.uniqlo.com/th/th/products/E464544-000?colorCode=COL56&sizeCode=CMA090' #url in product page 
driver.get(url)

list_change_img = driver.find_elements(By.CLASS_NAME,'fr-chip-label')



product_color = []
lst_img = []
for element in list_change_img:
    try:
        
        div_element = driver.find_element(By.CLASS_NAME,'fr-product-image')
        img_element = div_element.find_element(By.TAG_NAME, 'img')
        src = img_element.get_attribute('src')

        color = driver.find_element(By.CLASS_NAME,'color-picker-wrapper')
        color = color.find_element(By.TAG_NAME,'div')
        color = color.find_element(By.TAG_NAME,'h7')
        color = color.find_element(By.TAG_NAME,'span').text
        color = color.split(' ')
        color = ' '.join(color[2:])

        bg_color = element.get_attribute('style')
        if 'background-image:' in bg_color:
            str = bg_color.split(' ')
            str = (str[1])
            hasqoute = False
            bg_source = []
            count_qoute = 0
            for i in str:
                if hasqoute and i != '"':
                    bg_source.append(i)
                if i == '"':
                    count_qoute+=1
                    if count_qoute == 2:
                        break
                    hasqoute = True
            result =''.join(bg_source)

      
        if src not in lst_img:
            lst_img.append(src)
            dict1 = {}
            dict1['img_source'] = src
            dict1['color'] = color
            dict1['bg_img'] = result
            product_color.append(dict1)
        element.click()
    except:
        pass
    
# print(lst_img)
print(product_color)


# time.sleep(5)
