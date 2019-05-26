require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://formy-project.herokuapp.com/switch-window"

new_tab_button = driver.find_element(id: 'new-tab-button')
alert_button = driver.find_element(id: 'alert-button')

new_tab_button.click

driver.switch.to_window(driver.window_handles[1])
driver.switch.to_window(driver.window_handles[0])

alert_button.click
driver.switch.to.alert.accept