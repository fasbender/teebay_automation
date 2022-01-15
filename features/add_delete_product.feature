Feature: Add/Delete a Product

    Scenario: As a user I should be able to add a product
        Given I press the Add Product button
        And I go to the "ADD PRODUCT" page
        And I populate the title, categories, description, price, rent and duration
        Then I press the Add Product button to add the product

    Scenario: As a user I should be able to delete a product
        Given I am in the My Products page
        When I press the trash icon
        And I get an option "Are you sure you want to delete this product?"
        Then I press the delete button and the product should be deleted
