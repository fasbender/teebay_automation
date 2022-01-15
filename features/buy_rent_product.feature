Feature: Buy a Product

    Scenario: As a user I should be able to buy a product
        Given I am in the "Browse Products" page
        When I click on the "Funshine bear" product card, it will take me to the "PRODUCT DETAILS" page
        And I click on the Buy button I should get a pop up saying "Are you sure you want to buy this product?"
        Then I click on the Yes button and it should give a status of "SOLD"

    Scenario: As a user I should be able to rent a product
        Given I am in the "Browse Products" page
        When I click on the "Funshine bear" product card, it will take me to the "PRODUCT DETAILS" page
        And I click on the Rent button I should get a pop up
        And I type in the start and end date
        Then I click on the Book rent button and it should give a status of "CURRENTLY RENTED"