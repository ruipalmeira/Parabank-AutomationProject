@LoginSystem
Then('User see Parabank home page') do
  expect(page).to have_selector(:xpath, "//img[@title='ParaBank']")
end

Given('User must fill login Username field {string}') do |string|
  page.find(:xpath, "//div/div[@id='bodyPanel']/div[@id='leftPanel']/div[@id='loginPanel']/form/div/input[@name='username']").set(string)
end

Then('User must fill login Password field with {string}') do |string|
  page.find(:xpath, "//div/div[@id='bodyPanel']/div[@id='leftPanel']/div[@id='loginPanel']/form/div/input[@name='password']").set(string)
end

Then('User must click Login button') do
  page.find(:xpath, "//div/div[@id='bodyPanel']/div[@id='leftPanel']/div[@id='loginPanel']/form/div/input[@type='submit']").click
end

Then('User must see Bank Account page') do
  expect(page).to have_selector(:xpath, "//p[contains(text(),'Welcome Rui Palmeira')]")
end
