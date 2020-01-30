@quote
Feature: Quote Scenarios
  @quote1
  Scenario: Username field verification
    Given I open url "http://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "a" into element with xpath "//input[@name='username']"
    Then I wait for 3 sec
    When I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    Then I wait for 3 sec
    Then I clear element with xpath "//input[@name='username']"
    When I type "ss" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed
    Then I wait for 3 sec

  @quote2
  Scenario: Email field verification
    Given I open url "http://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "aaa" into element with xpath "//input[@name='email']"
    When I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I wait for 3 sec
    Then I clear element with xpath "//input[@name='email']"
    When I type "aaa@asd." into element with xpath "//input[@name='email']"
    When I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I wait for 3 sec
    Then I clear element with xpath "//input[@name='email']"
    When I type "asd@asd" into element with xpath "//input[@name='email']"
    When I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I wait for 3 sec

  @quote3
  Scenario: Validate Name Input Filed
    Given I open url "http://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='name']" should be present
    When I click on element using JavaScript with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be present
    Then I wait for 3 sec
    Then I type "Frname" into element with xpath "//input[@id='firstName']"
    Then I type "mdname" into element with xpath "//input[@id='middleName']"
    Then I type "LtName" into element with xpath "//input[@id='lastName']"
    When I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I wait for 3 sec
    Then element with xpath "//input[@id='name']" should be present
    Then I wait for 3 sec

    