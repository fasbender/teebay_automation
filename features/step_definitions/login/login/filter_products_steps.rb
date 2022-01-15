When('I click the Categories dropdown menu') do
    sleep 5
    find(:xpath, "//div[@name='category']").click
end

When('I select the Electronics category') do
    sleep 5
    find(:xpath, "//span[contains(text(), 'Electronics')]").click
end

Then('I click the Filter button') do
    sleep 5
    find('[type="submit"]').click
end

# Then('Then I should only see Last of Us Part II, iPhone 13') do
#     sleep 5
#     find(:xpath, "//div[contains(text(), 'Last of Us Part II PS5 game')]")
#     find(:xpath, "//div[contains(text(), 'iPhone pro max')]")
# end