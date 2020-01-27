@quote
Feature: Quote Scenarios
  @quote1
  Scenario: Username field verification
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "a" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    And I wait for 10 sec
    When I clear element with xpath "//input[@name='username']"
    And I type "ab" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed
    And I wait for 10 sec

     @quote2
     Scenario: email field verification
    
    