require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://formy-project.herokuapp.com/scroll"

name = driver.find_element(id: 'name')
date = driver.find_element(id: 'date')

driver.action.move_to(name).send_keys('John Doe')
driver.send_keys('01/01/2021')