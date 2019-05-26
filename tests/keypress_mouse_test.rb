require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://formy-project.herokuapp.com/keypress"

name = driver.find_element(id: 'name')
button = driver.find_element(id: 'button')

name.send_keys('John Doe')
button.click