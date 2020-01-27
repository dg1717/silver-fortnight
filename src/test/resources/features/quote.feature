@quote
Feature: Quote Scenarios
  
  @quote1
  Scenario: Password
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    And I type "a" into element with xpath "//input[@name='username']"
    And  I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    And I type "a" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed
    And I wait for 3 sec

  @quote2
  Scenario: Email
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    And I type "tammara.com" into element with xpath "//input[@name='email']"
    And  I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    When I clear element with xpath "//input[@name='email']"
    And I type "tam@gmail.com" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should not be displayed
    And I wait for 3 sec
