Feature: Filter Specific Products

    Scenario: As a user I should be able to filter products
        Given I am in the "Browse Products" page
        When I click the Categories dropdown menu
        And I select the Electronics category
        Then I click the Filter button