@quote
Feature: Quote Scenarios
  @auote1
  Scenario: Username field verfication
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    Given I type "A" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    Then I wait for 2 sec
    Then I clear element with xpath "//input[@name='username']"
    Given I type "AB" into element with xpath "//input[@name='username']"
    Then I wait for 2 sec
    
  @quote2
  Scenario: Email field verification

