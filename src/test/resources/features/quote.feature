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
    Scenario: Verify Email field Functionality
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

      @quote3
      Scenario: Verify Name Input Field Functionality
        Given I open url "https://skryabin.com/market/quote.html"
        Then I should see page title as "Get a Quote"
        When I click on element with xpath "//input[@id='name']"
        Then I wait for element with xpath "//div[@id='nameDialog']//div[1]" to be present
        Then I type "Nila" into element with xpath "//input[@id='firstName']"
        And I type "Thiru" into element with xpath "//input[@id='middleName']"
        And I type "Raju" into element with xpath "//input[@id='lastName']"
        And I click on element with xpath "//span[contains(text(),'Save')]"
        And I wait for 3 sec
        Then element with xpath "//input[@id='name']" should be displayed
        Then I wait for 3 sec
        When I click on element with xpath "//input[@id='name']"
        Then I wait for element with xpath "//div[@id='nameDialog']//div[1]" to be present
        Then I type "Nila" into element with xpath "//input[@id='firstName']"
        And I type " " into element with xpath "//input[@id='middleName']"
        And I type "Raju" into element with xpath "//input[@id='lastName']"
        And I click on element with xpath "//span[contains(text(),'Save')]"
        And I wait for 3 sec
        Then element with xpath "//input[@id='name']" should be displayed
        Then I wait for 3 sec

        @quote4
        Scenario: Validate Date of Birth Input Field Functionality
          Given I open url "https://skryabin.com/market/quote.html"
          Then I should see page title as "Get a Quote"
          When I clear element with xpath "//input[@id='dateOfBirth']"
          Then element with xpath "//div[@id='ui-datepicker-div']" should be displayed
          When I type "10/02/1984" into element with xpath "//input[@id='dateOfBirth']"
          Then I click on element with xpath "//select[@name='countryOfOrigin']"
          And I wait for 3 sec

        @quote5
        Scenario: Veify "accept 3rd party agreement"  Functionality
          Given I open url "https://skryabin.com/market/quote.html"
          Then I should see page title as "Get a Quote"
          When I click on element with xpath "//button[@id='thirdPartyButton']"
          Then I switch to new window
          Then I dismiss alert
          And I wait for 5 sec
          Then element with xpath "//span[@id='thirdPartyResponseMessage']" should be displayed
          And I wait for 3 sec
          When I click on element with xpath "//button[@id='thirdPartyButton']"
          Then I switch to new window
          Then I accept alert
          And I wait for 5 sec
          Then element with xpath "//span[@id='thirdPartyResponseMessage']" should be displayed
          And I wait for 3 sec
  






    
    
