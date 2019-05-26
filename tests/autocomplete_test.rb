require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://formy-project.herokuapp.com/autocomplete"

autocomplete = driver.find_element(id: 'autocomplete')
autocomplete_result = driver.find_element(class: 'pac-item')

# Implicit
driver.manage.timeouts.implicit_wait = 5

# Explicit
wait = Selenium::WebDriver::Wait.new(timeout: 5)
wait.until { driver.find_element(class: 'pac-item').displayed? }

autocomplete.send_keys('1555 Park Blvd, Palo Alto, CA, USA')
autocomplete_result.click