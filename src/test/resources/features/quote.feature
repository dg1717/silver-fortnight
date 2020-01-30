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
    And I wait for 5 sec
    Then element with xpath "//label[@id='email-error']" should be displayed
    When I clear element with xpath "//input[@name='email']"
    And I type "tam@gmail.com" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should not be displayed
    And I wait for 3 sec

  @quote3
  Scenario: Validate Name Input Field Functionality
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    And  I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be displayed
    When I type "Tamara" into element with xpath "//input[@id='firstName']"
    And I type "N" into element with xpath "//input[@id='middleName']"
    And I type "Nalyvaiko" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Tamara N Nalyvaiko"

   @quote4
    Scenario: Validate Date of Birth typing date
     Given I open url "https://skryabin.com/market/quote.html"
     When I should see page title as "Get a Quote"
     And  I type "12/14/2000" into element with xpath "//input[@id='dateOfBirth']"
     Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "12/14/2000"

  @quote5
  Scenario: Validate Date of Birth using datepicker
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    And  I click on element with xpath "//input[@id='dateOfBirth']"
    Then element with xpath "//*[@id='ui-datepicker-div']" should be displayed
    And I wait for 3 sec
    When I click on element with xpath "//select[@class='ui-datepicker-month']/option[12]"
    And I click on element with xpath "//select[@data-handler='selectYear']/option[@value='2000']"
    And I click on element with xpath "//td[@data-handler='selectDay']/a[text()='14']"
    Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "12/14/2000"
    And I wait for 3 sec

  @quote6
  Scenario: Validate  "accept 3rd party agreement"
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    And I wait for 3 sec
    And I accept alert
    Then element with xpath "//span[@id='thirdPartyResponseMessage']" should contain text "You accepted "
#    Then element with xpath "//span[@id='thirdPartyResponseMessage']" should contain text "You accepted third party agreement."
#    Then element with xpath "//span[@id='thirdPartyResponseMessage']" should have text as "You accepted third party agreement."
    And I wait for 3 sec



  @quote6
  Scenario: Validate  "accept 3rd party agreement"
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    And I wait for 3 sec
    And I accept alert
    Then element with xpath "//span[@id='thirdPartyResponseMessage']" should contain text "You accepted "
#    Then element with xpath "//span[@id='thirdPartyResponseMessage']" should contain text "You accepted third party agreement."
#    Then element with xpath "//span[@id='thirdPartyResponseMessage']" should have text as "You accepted third party agreement."
    And I wait for 3 sec
