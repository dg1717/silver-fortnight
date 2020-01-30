@quote
Feature: Quote Scenarios

  @quote1
  Scenario: Username field verification
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "z" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    When I clear element with xpath "//input[@name='username']"
    When I type "ad" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed
    And I wait for 3 sec

  @quote2
  Scenario: Email verification
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "xxxx" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    When I clear element with xpath "//input[@name='email']"
    When I type "abc@abc.com" into element with xpath "//input[@name='email']"
    And I wait for 5 sec

  @quote3
  Scenario: Complete form
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "abc" into element with xpath "//input[@name='username']"
    When I type "abc@abc.com" into element with xpath "//input[@name='email']"
    And I wait for 3 sec