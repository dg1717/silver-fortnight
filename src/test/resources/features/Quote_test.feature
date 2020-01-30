@predefined
Feature: Quote-test


  @predefined-Quote-name-input
  Scenario: Validate name input Field Functionality.
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='name']" should be displayed
    When I click on element using JavaScript with xpath "//input[@id='name']"
    Then element with xpath "//input[@id='firstName']" should be displayed
    And element with xpath "//input[@id='middleName']" should be displayed
    And element with xpath "//input[@id='middleName']" should be displayed
    When I type "f" into element with xpath "//input[@id='firstName']"
    And I type "m" into element with xpath "//input[@id='middleName']"
    And I type "l" into element with xpath "//input[@id='lastName']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name'][@value='f m l']" should be displayed


  @predefined-Quote-Date-of-birth-input
  Scenario: Validate Date of birth input Field Functionality using the format: mm/dd/yyyy
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='dateOfBirth']" should be displayed
    When I type "01/01/1990" into element with xpath "//input[@id='dateOfBirth']"
    Then element with xpath "//input[@id='dateOfBirth']" should be displayed


  Scenario: Validate Date of birth input field by typing using the date-picker
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='dateOfBirth']" should be displayed
    When I click on element using JavaScript with xpath "//label[contains(text(),'Date of Birth')]"
    Then element with xpath "//div[@id='ui-datepicker-div']" should be displayed
    When I click on element using JavaScript with xpath "//select[@class='ui-datepicker-month']"
    When I click on element using JavaScript with xpath "//tr[2]//td[1]//a[1]"
    Then element with xpath "//tr[2]//td[1]//a[1]" should be displayed


  @predefined-Quote-3rd-party-agreement(click)
  Scenario: Validate 3rd party agreement(click) functionality
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    And element with xpath "//button[@id='thirdPartyButton']" should be displayed
    When I click on element using JavaScript with xpath "//button[@id='thirdPartyButton']"
    Then I switch to new window
    When I accept alert
    Then element with xpath "//span[text()='You accepted third party agreement.']" should be displayed
    Then I wait for 1 sec
    When I click on element using JavaScript with xpath "//button[@id='thirdPartyButton']"
    Then I switch to new window
    When I dismiss alert
    Then element with xpath "//span[text()='You did not accept third party agreement.']" should be displayed

    