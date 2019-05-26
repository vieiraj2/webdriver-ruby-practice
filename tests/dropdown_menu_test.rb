require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://formy-project.herokuapp.com/dropdown"

dropdown_menu = driver.find_element(id: 'dropdownMenuButton')
autocomplete_item = driver.find_element(id: 'autocomplete')

dropdown_menu.click
autocomplete_item.click