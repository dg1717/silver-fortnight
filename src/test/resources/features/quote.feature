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
    When I type "aaa" into element with xpath "//input[@id='name']"
    When I type "abc@abc.com" into element with xpath "//input[@name='email']"
    And I wait for 3 sec

  @quote4
  Scenario: Date of Birth verification
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I click on element with xpath "//*[@id='dateOfBirth']"
    When I click on element with xpath "//*[text()='Prev']"
    When I click on element with xpath "//*[text()='Next']"
    #And I click on element with xpath "//*[@data-handler='selectMonth']/*[@value='8']"
    #And I click on element with xpath "//*[@data-handler='selectYear']/*[@value='1980']"
    And I click on element with xpath "//*[@value='9']"
    And I click on element with xpath "//*[@value='1981']"
    And I click on element with xpath "//a[text()='24']"
    And I wait for 3 sec
    Then element with xpath "//*[@id='dateOfBirth']" should have attribute "value" as "10/24/1981"

  @quote5
  Scenario: Alert verification
    Given I open url "https://skryabin.com/market/quote.html"
    And I click on element with xpath "//button[@id='thirdPartyButton']"
    When I dismiss alert
    And element with xpath "//span[contains(text(),'did not accept')]" should be displayed
    And I click on element with xpath "//button[@id='thirdPartyButton']"
    When I accept alert
    And element with xpath "//span[contains(text(),'You accepted')]" should be displayed

  @quote6
  Scenario: Verification Additional Information
    Given I open url "https://skryabin.com/market/quote.html"
    When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
    And I type "Kim L" into element with xpath "//input[@id='contactPersonName']"
    And I type "111-222-3333" into element with xpath "//input[@id='personPhone']"
    Then element with xpath "//input[@id='contactPersonName']" should have attribute "value" as "Kim L"
    Then element with xpath "//input[@id='personPhone']" should have attribute "value" as "111-222-3333"
    And I switch to default content

  @quote7
  Scenario: Verification of mouse over functionality
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//*[@value='Ford']"
    Then element with xpath "//*[@value='Ford']" should be selected
    When I mouse over element with xpath "//*[@value='Toyota']"
    And I wait for 5 sec
    When I click on element with xpath "//*[@value='Toyota']"
    Then element with xpath "//*[@value='Toyota']" should be selected
    And I wait for 5 sec

  @quote8
  Scenario: Verification of attached file
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "/Users/Macbook/Downloads/history.txt" into element with xpath "//input[@id='attachment']"
    And I wait for 7 sec