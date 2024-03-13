Given('User opens a new browser') do
  visit "about:blank"
  sleep 5
end

When('User go to {string}') do |address|
  visit address
  sleep 1
end

Then('User must see Parabank home page') do
  expect(page).to have_selector(:xpath, "//img[@title='ParaBank']")
end

Then('User clicks "About Us"') do
  page.find(:xpath, "//a[contains(text(),'About Us')]").click
end

Then('User must see "About Us" page') do
  expect(page).to have_selector(:xpath, "//h1[contains(text(), 'Parasoft Demo Website')]")
end

Then('User clicks "Services"') do
  page.find(:xpath, "//a[contains(text(),'Services')]").click
end

Then('User must see "Services" page') do
  expect(page).to have_selector(:xpath, "//span[contains(text(), 'Available Bookstore SOAP services')]")
end

Then('User clicks "Products"') do
  page.find(:xpath, "//a[contains(text(),'Products')]").click
end

Then('User must see "Products" page') do
  expect(page).to have_selector(:xpath, "//p[contains(text(), 'Products')]")
end

Then('User clicks "Admin Page"') do
  page.find(:xpath, "//a[contains(text(),'Products')]").click
end

Then('User must see "Admin Page" page') do
  expect(page).to have_selector(:xpath, "//h1[contains(text(), 'Administration')]")
end
