
Given(/^I am on jungle socks page$/) do
  home = HomePage.new(@driver)
  home.open_jungle_socks

end

And(/^I select state as "([^"]*)"$/) do |state|
  home=HomePage.new(@driver)
  home.select_state(state)

end

And(/^I enter quantities for zebra as "([^"]*)", lion as "([^"]*)", elephant as "([^"]*)" and giraffe as "([^"]*)"$/) do |zebra, lion, elephant, giraffe|
  home=HomePage.new(@driver)
  home.enter_quantities(zebra,lion,elephant,giraffe)

end

When(/^I submit the page$/) do
  home=HomePage.new(@driver)
  home.submit
  sleep 10
end

Then(/^I should see tax is calculated as per "([^"]*)"$/) do |arg|
  pending
end