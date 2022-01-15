# Add Product
Given('I press the Add Product button') do
  sleep 5
  step 'I visit "https://erahmansazim.github.io/teebay-buggy/"'
  step 'I type "testuser@teebay.com" and "123456"'
  find(:xpath, "//button[contains(text(), 'Add Product')]").click
end

When('I go to the {string} page') do |string|
  sleep 5
  expect(find('.header').text).to eql(string)
end    

When('I populate the title, categories, description, price, rent and duration') do
  sleep 5
  find(:xpath, "//input[@name='title']").set('This is the Product Title')
  find(:xpath, "//div[@name='categories']").click
  find(:xpath, "//span[contains(text(), 'Sporting Goods')]").click
  find(:xpath, "//span[contains(text(), 'Toys')]").click
  find(:xpath, "//textarea[@name='description']").set('This is a product description')
  find(:xpath, "//input[@name='purchase_price']").set('200')
  find(:xpath, "//input[@name='rent_price']").set('5')
  find(:xpath, "//div[@name='rent_duration_type']").click
  find(:xpath, "//span[contains(text(), 'Weekly')]").click
end

Then('I press the Add Product button to add the product') do
  sleep 5
  find('[type="submit"]').click
end

# Delete Product
Given('I am in the My Products page') do
  sleep 5
  step 'I visit "https://erahmansazim.github.io/teebay-buggy/"'
  step 'I type "testuser@teebay.com" and "123456"'
  step 'I should see results for "Cricket kit"'  
end

When('I press the trash icon') do
  sleep 5
  first('.trash').click
end

When('I get an option {string}') do |string|
  sleep 5
  expect(find('.description').text).to eql(string)
end

Then('I press the delete button and the product should be deleted') do
  sleep 5
  find(:xpath, "//button[contains(text(), 'Yes, delete')]").click
end