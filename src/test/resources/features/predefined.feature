@predefined
Feature: Smoke steps


    @predefined2
    Scenario: Predefined steps for Yahoo
      Given I open url "https://www.yahoo.com/"
      Then I should see page title as "Yahoo"
      Then element with xpath "//input[@id='header-search-input']" should be present
      When I type "Cucumber" into element with xpath "//input[@id='header-search-input']"
      When I click on element with xpath "//button[@id='header-desktop-search-button']"
      Then I wait for element with xpath "//div[@id='results']" to be present
      Then element with xpath "//div[@id='results']" should contain text "Cucumber"




