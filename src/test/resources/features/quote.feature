@quote
Feature: Quote Scenarios
  @qoute1
  Scenario: Verify Username field
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I type "n" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    And I wait for 3 sec
    Then I clear element with xpath "//input[@name='username']"
    When I type "Ni" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed
    And I wait for 3 sec

    @quote2
    Scenario: Verify Email field
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
      When I type "vrazhagunila" into element with xpath "//input[@name='email']"
      Then I click on element with xpath "//button[@id='formSubmit']"
      And I wait for 3 sec
      Then element with xpath "//label[@id='email-error']" should be displayed
      Then I clear element with xpath "//input[@name='email']"
      When I type "vrazhagunila@gmail" into element with xpath "//input[@name='email']"
      Then I click on element with xpath "//button[@id='formSubmit']"
      And I wait for 3 sec
      Then element with xpath "//label[@id='email-error']" should not be displayed