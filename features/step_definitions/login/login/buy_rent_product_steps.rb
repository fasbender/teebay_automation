# Buy a product
Given('I am in the {string} page') do |string|
  sleep 5
  step 'I visit "https://erahmansazim.github.io/teebay-buggy/"'
  step 'I type "testuser@teebay.com" and "123456"'
  find(:xpath, "//a[contains(text(), 'Browse Products')]").click
end    
When('I click on the {string} product card, it will take me to the {string} page') do |string, string2|    
  sleep 5
  card = find(:xpath, "//div[contains(text(), 'Funshine bear')]")
  if(expect(card.text).to eql(string))
    card.click  
  end
  find(:xpath, "//h1[contains(text(), 'PRODUCT DETAILS')]")
end

When('I click on the Buy button I should get a pop up saying {string}') do |string|
  sleep 5
  find(:xpath, "//button[contains(text(), 'Buy')]").click
  expect(find('.description').text).to eql(string) 
end

Then('I click on the Yes button and it should give a status of {string}') do |string|
  sleep 5
  find(:xpath, "//button[contains(text(), 'Yes!')]").click
  find(:xpath, "//div[contains(text(), 'SOLD')]")
end

# Rent a product
When('I click on the Rent button I should get a pop up') do
  sleep 5
  find(:xpath, "//button[contains(text(), 'Rent')]").click
  find(:xpath, "//label[contains(text(), 'Start date')]")
end

When('I type in the start and end date') do
  sleep 5
  find(:xpath, "//input[@name = 'start_date']").set('2020-15-50')
  find(:xpath, "//input[@name = 'end_date']").set('2020-65-22')
end

Then('I click on the Book rent button and it should give a status of {string}') do |string|
  sleep 5
  find(:xpath, "//button[contains(text(), 'Book rent')]").click
  find(:xpath, "//div[contains(text(), 'CURRENTLY RENTED')]")
end