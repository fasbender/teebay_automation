#Login steps
Given('I visit {string}') do |string|
  visit string
end

When('I type {string} and {string}') do |string, string2|
  sleep 5
  find(:xpath, "//input[@name='email']").set(string)
  find(:xpath, "//input[@name='password']").set(string2)
  find('[type="submit"]').click
end

Then('I should see results for {string}') do |string|
  sleep 5
  expect(first('.sc-hKwDye').text).to eql("Cricket kit")
end

#Logout steps
Given('I press logout button') do
  sleep 5
  step 'I visit "https://erahmansazim.github.io/teebay-buggy/"'
  step 'I type "testuser@teebay.com" and "123456"'
  find(:xpath, "//a[contains(text(), 'Logout')]").click
end

When('I get an option to logout') do
  sleep 5
  expect(find('.description').text).to eql('Are you sure you want to log out?')  
end

When('I press the {string} button') do |string|
  sleep 5
  logOut = find(:xpath, "//button[contains(text(), 'Yes I am sure!')]")
  if(expect(logOut.text).to eql(string))
    logOut.click
  end  
end

Then('I should see the {string} page') do |string|
  sleep 5
  expect(find('.header').text).to eql(string)
end