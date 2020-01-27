@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
  Scenario: Predefined steps for Yahoo
    Given I open url "https://www.yahoo.com/"
    Then I should see page title as "Yahoo"
    Then element with xpath "//input[@id='header-search-input']" should be present
    When I type "Cucumber" into element with xpath "//input[@id='header-search-input']"
    When I click on element using JavaScript with xpath "//button[@id='header-desktop-search-button']"
    Then I wait for element with xpath "//div[@id='results']" to be present
    Then element with xpath "//div[@id='results']" should contain text "cucumber"
    
  @predefined3
  Scenario: Predefined steps for Quotepage
    Given I open url "http://quote-qa.portnov.com/"
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
    Then I hit cancel button in attachment window "test"
    Then I switch to first window
    Given I click on element with xpath "//*[@id='formSubmit']"
    Then I switch to new window
    Then I should see page title as "Get a Quote"
    Then I wait for 3 sec








    





  