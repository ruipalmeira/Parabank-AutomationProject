Then('User see Parabank home page') do
  expect(page).to have_selector(:xpath, "//img[@title='ParaBank']")
end

Then('User clicks "Register"') do
  page.find(:xpath, "//a[contains(text(),'Register')]").click
end

Then('User must see "Register" page') do
  expect(page).to have_selector(:xpath, "//div[@id='bodyPanel']/div[@id='rightPanel']/h1")
end

Then('User must fill First Name field with {string}') do |argument|
  page.find(:xpath, "//input[@name='customer.firstName']").set(argument)
  sleep 3
end

Then('User must fill Last Name field with {string}') do |argument|
  page.find(:xpath, "//input[@id='customer.lastName']").set(argument)
  sleep 3
end

Then('User must fill Address field with {string}') do |argument|
  page.find(:xpath, "//input[@id='customer.address.street']").set(argument)
  sleep 3
end

Then('User must fill City field with {string}') do |argument|
  page.find(:xpath, "//input[@id='customer.address.city']").set(argument)
  sleep 3
end

Then('User must fill State field with {string}') do |argument|
  page.find(:xpath, "//input[@id='customer.address.state']").set(argument)
  sleep 3
end

Then('User must fill ZipCode field with {string}') do |argument|
  page.find(:xpath, "//input[@id='customer.address.zipCode']").set(argument)
  sleep 3
end

Then('User must fill Phone # field with {string}') do |argument|
page.find(:xpath, "//input[@id='customer.phoneNumber']").set(argument)
  sleep 3
end

Then('User must fill SSN field with {string}') do |argument|
  page.find(:xpath, "//input[@id='customer.ssn']").set(argument)
  sleep 3
end

Then('User must fill Username field with {string}') do |argument|
  page.find(:xpath, "//input[@id='customer.username']").set(argument)
  sleep 3
end

Then('User must fill Password field with {string}') do |argument|
  page.find(:xpath, "//input[@id='customer.password']").set(argument)
  sleep 3
end

Then('User must fill Confirm field with {string}') do |argument|
  page.find(:xpath, "//input[@id='repeatedPassword']").set(argument)
  sleep 3
end

Then('User must click Register button') do
  page.find(:xpath, "//div[@id='bodyPanel']/div[@id='rightPanel']/form/table/tbody/tr[13]/td[2]/input").click
end

Given('User must fill login Username field {string}') do |string|
  // Write code here that turns the phrase above into concrete actions
end

Then('User must fill login Password field with {string}') do |string|
  // Write code here that turns the phrase above into concrete actions
end

Then('User must click Login button') do |string|
  // Write code here that turns the phrase above into concrete actions
end

Then('User must see Bank Account page') do
  expect(page).to have_selector(:xpath, "//h1[contains(text*(), 'Welcome palmeira')]")
end
