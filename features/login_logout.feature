Feature: Login/Logout

    Scenario: As a user I should be able to login
        Given I visit "https://erahmansazim.github.io/teebay-buggy/"
        When I type "testuser@teebay.com" and "123456"
        Then I should see results for "Cricket kit"

    Scenario: As a user I should be able to logout
        Given I press logout button
        And I get an option to logout
        When I press the "Yes I am sure!" button
        Then I should see the "SIGN IN" page