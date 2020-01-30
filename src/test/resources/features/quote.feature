@quote
Feature: Quote Scenarios
  Scenario: Username field verification
    Given I open url "http://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    When I type "Araltan" into element with xpath "//input[@name='username']"


@quote_2
Scenario: Username field verification 2
  Given I open url "http://skryabin.com/market/quote.html"
  When I should see page title as "Get a Quote"
  When I type "A " into element with xpath "//input[@name='username']"
  And I wait for 3 sec
  And I click on element with xpath " //button[@id='formSubmit']"
  Then element with xpath "//label[@id='username-error']" should be displayed
  And I wait for 3 sec
  When I clear element with xpath "//input[@name='username']"
  And I type "ab" into element with xpath "//input[@name='username']"
  Then element with xpath "//label[@id='username-error']" should not be displayed