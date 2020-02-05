@quote
Feature: Quote Scenarios
  @quote1
  Scenario: Username field verification
    Given I open url "http://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "a" into element with xpath "//input[@name='username']"
    Then I wait for 3 sec
    When I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    Then I wait for 3 sec
    Then I clear element with xpath "//input[@name='username']"
    When I type "ss" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed
    Then I wait for 3 sec

  @quote2
  Scenario: Email field verification
    Given I open url "http://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "aaa" into element with xpath "//input[@name='email']"
    When I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I wait for 3 sec
    Then I clear element with xpath "//input[@name='email']"
    When I type "aaa@asd." into element with xpath "//input[@name='email']"
    When I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I wait for 3 sec
    Then I clear element with xpath "//input[@name='email']"
    When I type "asd@asd" into element with xpath "//input[@name='email']"
    When I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I wait for 3 sec

  @quote3
  Scenario: Validate Name Input Filed
    Given I open url "http://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='name']" should be present
    When I click on element using JavaScript with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be present
    Then I wait for 3 sec
    Then I type "Frname" into element with xpath "//input[@id='firstName']"
    Then I type "mdname" into element with xpath "//input[@id='middleName']"
    Then I type "LtName" into element with xpath "//input[@id='lastName']"
    When I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I wait for 3 sec
    Then element with xpath "//input[@id='name']" should be present
    Then I wait for 3 sec

  @quote4
  Scenario: Verification of Date of Birth - Datepicker
    Given I open url "http://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I click on element with xpath "//input[@id='dateOfBirth']"
#    And I click on element with xpath "//*[text() = 'Prev']"
#    And I click on element with xpath "//*[text() = 'Next']"
    And I click on element with xpath "//*[@data-handler ='selectMonth']//*[@value ='8']"
    And I click on element with xpath "//*[@data-handler ='selectYear']//*[@value ='2019']"
    And I click on element with xpath "//a[text()='24']"
    And I wait for 3 sec
#    Then element with xpath "//input[@id='dateOfBirth']" should contain text "09/24/2019"
    Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "09/24/2019"

  @quote5
  Scenario: Verification of Alert
    Given I open url "http://skryabin.com/market/quote.html"
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    When I dismiss alert
    Then element with xpath "//span[contains(text(),'did not accept')]" should be displayed
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    When I accept alert
    Then element with xpath "//span[contains(text(),'You accepted')]" should be displayed
    Then I wait for 3 sec

  @quote6
  Scenario: Verification of Additional Info - Switch to i-frame
    Given I open url "http://skryabin.com/market/quote.html"
    When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
    And I type "Name1" into element with xpath "//input[@id='contactPersonName']"
    And I type "123-123-1234" into element with xpath "//input[@id='contactPersonPhone']"
    Then element with xpath "//input[@id='contactPersonName']" should have attribute "value" as "Name1"
    Then element with xpath "//input[@id='contactPersonPhone']" should have attribute "value" as "123-123-1234"
    Then I wait for 3 sec
    And I switch to default content

  @quote7
  Scenario: Verification of Mouse over functionality
    Given I open url "http://skryabin.com/market/quote.html"
    When I click on element with xpath "//*[@value='Ford']"
    Then element with xpath "//*[@value='Ford']" should be selected
    When I mouse over element with xpath "//*[@value='Toyota']"
    When I click on element with xpath "//*[@value='Toyota']"
    Then element with xpath "//*[@value='Toyota']" should be selected
    Then I wait for 3 sec

  @quote8
  Scenario: Verification of attched File
    Given I open url "http://skryabin.com/market/quote.html"
    When I type "C:\Users\sugim\OneDrive\Desktop\Portnov\logo.png" into element with xpath "//input[@id='attachment']"
    And I wait for 8 sec

  @quote9
  Scenario: End-to-end Verification
    Given I open url "http://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='name']" should be present
    When I click on element using JavaScript with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be present
    Then I wait for 3 sec
    Then I type "Frname" into element with xpath "//input[@id='firstName']"
    Then I type "mdname" into element with xpath "//input[@id='middleName']"
    Then I type "LtName" into element with xpath "//input[@id='lastName']"
    When I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I wait for 3 sec
    Then element with xpath "//input[@id='name']" should be present
    Then element with xpath "//input[@name='username']" should be present
    When I type "User1" into element with xpath "//input[@name='username']"
    When I type "user1@yahoo.com" into element with xpath "//input[@name='email']"
    When I type "Pwdstr" into element with xpath "//input[@id='password']"
    When I type "Pwdstr" into element with xpath "//input[@id='confirmPassword']"
    When I type "1234567890" into element with xpath "//input[@name='phone']"
    When I click on element with xpath "//input[@id='dateOfBirth']"
    And I click on element with xpath "//*[@data-handler ='selectMonth']//*[@value ='8']"
    And I click on element with xpath "//*[@data-handler ='selectYear']//*[@value ='2019']"
    And I click on element with xpath "//a[text()='24']"
    And I wait for 3 sec
    Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "09/24/2019"
    When I click on element using JavaScript with xpath "//select[@name='countryOfOrigin']/..//option[@value='France']"
    Then element with xpath "//select[@name='countryOfOrigin']" should contain text "France"
    Then I click on element using JavaScript with xpath "//input[@value='female']"
    Then I wait for 3 sec
    Then I click on element using JavaScript with xpath "//input[@name='allowedToContact']"
    And I type "address123" into element with xpath "//textarea[@id='address']"
    And I click on element using JavaScript with xpath "//option[contains(text(),'Toyota')]"
    And I switch to iframe with xpath "//iframe[@name='additionalInfo']"
    Then I type "Name12" into element with xpath "//input[@id='contactPersonName']"
    And I type "444-555-5667" into element with xpath "//input[@id='contactPersonPhone']"
    Then I wait for 3 sec
    Then I switch to default content
    When I click on element using JavaScript with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I wait for 3 sec
    When I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then I wait for element with xpath "//div[@id='quotePageResult']" to be present
    Then I wait for 3 sec
    Then element with xpath "//b[@name='firstName']" should have text as "Frname"
    When I click on element using JavaScript with xpath "//button[@id='return']"
    Then I wait for element with xpath "//form[@id='quoteForm']//fieldset" to be present
    Then I wait for 3 sec

  @quote10
  Scenario: New window
    Given I open url "http://skryabin.com/market/quote.html"
    Then element with xpath "//a[@id='link']" should be present
    When I click on element using JavaScript with xpath "//a[@id='link']"
    Then I open url "http://skryabin.com/market/new_window.html"
    Then I wait for 3 sec
    Then element with xpath "//html//body//ul" should be present
    Then I wait for 3 sec
    Then I switch to first window
    Then I wait for 3 sec

  @quote11
  Scenario: Country of origin
    Given I open url "http://skryabin.com/market/quote.html"
    Then I click on element using JavaScript with xpath "//select[@name='countryOfOrigin']"
    Then I wait for 3 sec
