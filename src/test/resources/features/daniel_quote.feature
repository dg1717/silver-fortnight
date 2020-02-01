@quote
Feature: Quote Scenarios
  @quote1
  Scenario: Username field verfication
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    Given I type "A" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    Then I wait for 2 sec
    Then I clear element with xpath "//input[@name='username']"
    Given I type "AB" into element with xpath "//input[@name='username']"
    Then I wait for 2 sec
    
  @quote2
  Scenario: Email field verification
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    Then I type "abc" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//button[@id='formSubmit']" 
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I wait for 2 sec
    Then I clear element with xpath "//input[@name='email']"
    Then I type "ab@" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I wait for 2 sec
    Then I clear element with xpath "//input[@name='email']"
    Then I type "ab@gmail.com" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should not be displayed

  @quote3
  Scenario: Happy path test for the whole page
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then I type "danielyu" into element with xpath "//input[@name='username']"
    Then I type "danielyu99@gmail.com" into element with xpath "//input[@name='email']"
    Then I type "12345" into element with xpath "//input[@id='password']"
    Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
    Then I click on element with xpath "//input[@id='name']"
    Then I wait for element with xpath "//input[@name='firstName']" to be present
    Then I type "Daniel" into element with xpath "//input[@name='firstName']"
    Then I type "Yu" into element with xpath "//input[@id='lastName']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I wait for element with xpath "//input[@name='phone']" to be present
    Then I type "408-123-4567" into element with xpath "//input[@name='phone']"
    Then I click on element using JavaScript with xpath "//input[@id='dateOfBirth']"
    Then I type "01/01/2000" into element with xpath "//input[@id='dateOfBirth']"
    Then I click on element using JavaScript with xpath "//select[@name='countryOfOrigin']/..//option[@value='Canada']"
    Then I click on element using JavaScript with xpath "//label[contains(text(),'Gender')]/..//input[@value='male']"
    Then I click on element using JavaScript with xpath "//label[contains(text(),'Allowed to Contact?')]/..//input[@name='allowedToContact']"
    Then I type "4970 El Camino Real, Los Alto, CA" into element with xpath "//textarea[@id='address']"
    Then I click on element using JavaScript with xpath "//label[contains(text(),'Car Make')]/..//option[@value='BMW']"
    Then I switch to iframe with xpath "//iframe[@name='additionalInfo']"
    Then I type "Daniel Yu" into element with xpath "//input[@id='contactPersonName']"
    Then I type "408-123-4567" into element with xpath "//input[@id='contactPersonPhone']"
    Then I switch to first window
    Then I click on element using JavaScript with xpath "//button[@id='thirdPartyButton']"
    Given I accept alert
    Then I click on element using JavaScript with xpath "//input[@id='relatedDocuments']"
    Then I switch to first window
    Then I click on element using JavaScript with xpath "//img[@alt='Download']"
    Then I switch to first window
    Then I click on element using JavaScript with xpath "//input[@name='agreedToPrivacyPolicy']"
    When I type "/Users/xiaohongyu/Desktop/test1.txt" into element with xpath "//input[@id='attachment']"
    Then I switch to first window
    Then I click on element with xpath "//*[@id='formSubmit']"
    Then I switch to new window
    Then I should see page title as "Get a Quote"
    Then I wait for 3 sec

  @quote4
  Scenario: Verification of Date of Birth
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I click on element with xpath "//input[@id='dateOfBirth']"
    And I click on element with xpath "//*[text()='Prev']"
    And I click on element with xpath "//*[text()='Next']"
#    And I click on element with xpath "//*[@class='ui-datepicker-month']//*[@value='9']"
#    And I click on element with xpath "//*[@data-handler='selectYear']//*[@value='2019']"
    And I click on element with xpath "//*[@value='9']"
    And I click on element with xpath "//*[@value='2019']"
    And I click on element with xpath "//a[text()='24']"
    Then I wait for 1 sec
    Then element with xpath "//*[@id='dateOfBirth']" should have attribute "value" as "10/24/2019"

  @quote5
  Scenario: Third party validation
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    Then I dismiss alert
    And element with xpath "//span[contains(text(),'did not accept')]" should be displayed
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    When I accept alert
    Then element with xpath "//span[contains(text(),'You accepted')]" should be displayed

  @Quote6
  Scenario: Additional information validation
    Given I open url "https://skryabin.com/market/quote.html"
    When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
    And I type "Galina" into element with xpath "//input[@id='contactPersonName']"
    And I type "123-456-7890" into element with xpath "//input[@id='contactPersonPhone']"
    Then element with xpath "//input[@id='contactPersonName']" should have attribute "value" as "Galina"
    Then element with xpath "//input[@id='contactPersonPhone']" should have attribute "value" as "123-456-7890"

  @Quote7
  Scenario: Mouse over validation
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//*[@value='Ford']"
#    When I mouse over element with xpath "//*[@value='Ford']"
    Then element with xpath "//*[@value='Ford']" should be selected
#    When I mouse over element with xpath "//*[@value='Toyota']"
    When I click on element with xpath "//*[@value='Toyota']"
    Then element with xpath "//*[@value='Toyota']" should be selected
    Then I wait for 10 sec

  @Quote8
  Scenario: validation of attached file
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "/Users/xiaohongyu/Desktop/test1.txt" into element with xpath "//input[@id='attachment']"
    Then I wait for 10 sec





