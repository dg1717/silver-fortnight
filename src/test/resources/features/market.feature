@market
Feature: Market Scenario
  @market1
  Scenario: WebDriver Methods - Navigate
    Given I go to "Google"
    And I Print Page details
    And I go to "quote"
    When I refresh, go back, go forward

  @market2
  Scenario: Quote - responsive design
    Given I go to "quote"
    And I set window to maximum
    And I set window to full screen
#    And I set window width to 400 and height to 600
    And I Change Resolution to "phone"
    Then I Check window size

  @market3
  Scenario: Quote - email validation
    Given I go to "quote"
    When I navigate to "prod" environment
    When I clear email field
    And I type "wrongformat" into email field
    And I submit the form
    Then element with text "Please enter a valid email addr" should be displayed
#    Then I clear email field
#    And I type "abc@abc" into email field
#    And I submit the form
#    Then

  @market4
  Scenario: Quote End-to end validation
    Given I go to "quote"
    When I navigate to "stage" environment
    And I fill out all the required fields
    And I submit the form
    Then I verify the entered data on the results page

  @market5
  Scenario: Verify Password field behavior
    Given I go to "quote"
    When I navigate to "stage" environment
    And I verify password field behavior
