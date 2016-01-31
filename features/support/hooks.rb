Before do |scenario|
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.window.maximize
  @driver.manage.timeouts.implicit_wait = 30
  @driver.manage.timeouts.page_load = 60
end

After do |scenario|
  @driver.quit
end
