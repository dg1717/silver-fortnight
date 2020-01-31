@quote
Feature: Quote Scenarios

  Scenario: Username field verification
    Given I open url "http://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "a" into element with xpath "//input[@name='username']"
    And I wait for 2 sec
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    And I wait for 2 sec
    When I clear element with xpath "//input[@name='username']"
    And I type "ab" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed

    @quote
    Scenario: Email field verification
      Given I open url "https://skryabin.com/market/quote.html"
      And  I should see page title as "Get a Quote"
      When I type "olesia.emodelsgmail.com" into element with xpath "//input[@name='email']"
      And I wait for 2 sec
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='email-error']" should be displayed
      And I wait for 2 sec
      When I clear element with xpath "//input[@name='email']"
      And I type "olesia.emodels@gmail.com" into element with xpath "//input[@name='email']"
      And I wait for 2 sec
      And element with xpath "//label[@id='email-error']" should not be displayed

      @quote
      Scenario: Name Input field functionality
        Given I open url "https://skryabin.com/market/quote.html"
        And I should see page title as "Get a Quote"
        And I wait for 2 sec
        When I click on element with xpath "//input[@id='name']"
        And I type "vasya" into element with xpath "//input[@id='firstName']"
        When I type "v" into element with xpath "//input[@id='middleName']"
        And I type "vasilenko" into element with xpath "//input[@id='lastName']"
        When I click on element with xpath "//span[contains(text(),'Save')]"
        And I wait for 1 sec
        Then element with xpath "//input[@id='name']" should have attribute "value" as "vasya v vasilenko"
        And I wait for 2 sec

  @quote
  Scenario: Date of Birth field functionality
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    And I wait for 2 sec
    When I click on element with xpath "//input[@id='dateOfBirth']"
    And I type "09/09/1985" into element with xpath "//input[@id='dateOfBirth']"
    And I wait for 2 sec

  @quote
  Scenario: Date of Birth field functionality with datepicker calendar
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    And I wait for 2 sec
    When I click on element with xpath "//input[@id='dateOfBirth']"
    When I click on element with xpath "//select[@class='ui-datepicker-month']"
    And I click on element with xpath "//select[@class='ui-datepicker-year']"
    And I wait for 3 sec
    And I click on element with xpath "//div[@id='ui-datepicker-div']"
    And I wait for 2 sec

  @quote
  Scenario: accept 3rd party agreement functionality
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    And I wait for 4 sec
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    And I wait for 4 sec
    When I accept alert

