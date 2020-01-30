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
    Given I type "AB" into element with xpath "//input[@name='username']"
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
    Then I click on element using JavaScript with xpath "//input[@id='attachment']"
    Then I switch to first window
    Then I hit cancel button in attachment window
    Then I click on element with xpath "//*[@id='formSubmit']"
    Then I switch to new window
    Then I should see page title as "Get a Quote"
    Then I wait for 3 sec



