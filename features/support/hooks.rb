AfterStep do |step|
  sleep WAIT_BETWEEN_STEPS
  attach page.save_screenshot "results/tmp/#{Time.now.to_i}.png"
end

Before do |scenario|
  Capybara.current_session.driver.browser.manage.window.resize_to(1920, 1080)
  Capybara.current_session.driver.browser.manage.window.maximize
  FileUtils.rm_rf("#{ROOT_PATH}/results/tmp")
end
