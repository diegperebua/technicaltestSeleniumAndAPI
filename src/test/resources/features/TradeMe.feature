@TradeMe
Feature: TradeMe UI and API Tests

Rule: This is a good place to put which business rule we are testing with this feature.


Scenario: "As a user, I can see all the car makes on the Make dropdown"
    Given I navigate to the TradeMe Motor page
    Then I can verify that the number of car makes is 82


Scenario Outline: "As a user, I can validate that each make has the right amount of cars listed"
    Given I navigate to the TradeMe Motor page
    When I select the car make <Make>
    Then I can see it has <Amount> records in the results

        Examples:
            | Make    | Amount |
            | Ferrari | 46     |
            | BMW     | 3,209  |
            | Mazda   | 6,291 |
            | Honda   | 3,405  |

Scenario: "As a user, I want to verify the amount of car makes throught the API"
    Given I send the request to the endpoint
    Then I can see there are 81 car makes
