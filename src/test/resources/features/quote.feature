@quote
Feature: Quote Scenarios

 @quote1
Scenario: Username field verification
  Given I open url "https://skryabin.com/market/quote.html"
  And I should see page title as "Get a Quote"
  When I type "a" into element with xpath "//input[@name='username']"
  And I click on element with xpath "//button[@id='formSubmit']"
  Then element with xpath "//label[@id='username-error']" should be displayed
  And I wait for 3 sec
  When I clear element with xpath "//input[@name='username']"
  And I type "ab" into element with xpath "//input[@name='username']"
  And I wait for 3 sec
  Then element with xpath "//label[@id='username-error']" should not be displayed

 @quote2
 Scenario: Validate Name Input Field Functionality
   Given I open url "https://skryabin.com/market/quote.html"
   And I should see page title as "Get a Quote"
   And I click on element with xpath "//input[@id='name']"
   Then element with xpath "//div[@aria-describedby='nameDialog']" should be displayed
   And I wait for 3 sec
   And I type "Elena" into element with xpath "//input[@id='firstName']"
   And I type "Anna" into element with xpath "//input[@id='middleName']"
   And I type "Sen" into element with xpath "//input[@id='lastName']"
   And I wait for 3 sec
   And I click on element with xpath "//span[contains(text(),'Save')]"
   Then element with xpath "//input[@id='name']" should contain text "Elena Anna Sen"
   And I wait for 3 sec
   Then element with xpath "//label[@id='name-error']" should not be displayed
   And I wait for 2 sec

  @quote3
  Scenario: Verification of Date of birth, datepicker
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I click on element with xpath "//*[@id='dateOfBirth']"
    And I click on element with xpath "//*[text()='Prev']"
    And I click on element with xpath "//*[text()='Next']"
    And I click on element with xpath "//*[@value='8']"
    And I click on element with xpath "//*[@value='2019']"
    And I click on element with xpath "//a[text()='24']"
    Then element with xpath "//*[@id='dateOfBirth']" should have attribute "value" as "09/24/2019"

  @quote3
  Scenario: Verification of alert
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    When I dismiss alert
    And element with xpath "//button[@id='thirdPartyButton']" should not be displayed

  @quote4
  Scenario: Verification of additional info - switching to iFrame
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
    And I type "Galina" into element with xpath "//input[@id='contactPersonName']"
    And I type "1234" into element with xpath "//input[@id='contactPersonPhone']"
    Then element with xpath "//input[@id='contactPersonName']" should have attribute "value>" as "Galina"
    And I switch to default content

  @quote5
  Scenario: Verification of mouse over functionality
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I click on element with xpath "//*[@value='Ford']"
    Then element with xpath "//*[@value='Ford']" should be displayed
    Then I mouse over element with xpath "//*[@value='Toyota']"
    And I click on element with xpath "//*[@value='Toyota']"
    Then element with xpath "//*[@value='Toyota']" should be selected
    And I wait for 4 sec

  @quote6
  Scenario: Verification of attached file
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "C:\Users\lenas\Desktop" into element with xpath "//input[@id='attachment']"
    And I wait for 7 sec

    @quote7
    Scenario: End-to-End Quote page workflow
      Given I open url "https://skryabin.com/market/quote.html"
      And I should see page title as "Get a Quote"
      When I click on element with xpath "//input[@id='name']"
      Then I type "Elena" into element with xpath "//*[@id='firstName']"
      Then I type "Anna" into element with xpath "//*[@id='middleName']"
      Then I type "Sen" into element with xpath "//*[@id='lastName']"
      And I wait for 2 sec
      Then I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should have attribute "value" as "Elena Anna Sen"
      Then I click on element with xpath "//select[@name='countryOfOrigin']"
      Then I click on element with xpath "//option[contains(text(),'France')]"
      Then I type "ElenaS" into element with xpath "//input[@name='username']"
      Then I type "12345678" into element with xpath "//input[@id='password']"
      Then I type "12345678" into element with xpath "//input[@id='confirmPassword']"
      Then I type "5104289398" into element with xpath "//input[@name='phone']"
      Then I type "123aa@gmail.com" into element with xpath "//input[@name='email']"
      Then I type "1234 My Address" into element with xpath "//textarea[@id='address']"
      And I wait for 3 sec
      And I click on element with xpath "//*[@value='Toyota']"
      Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      And I wait for 3 sec
      Then I click on element with xpath "//*[@value='female']"
      And I wait for 3 sec
      Then I click on element with xpath "//input[@name='allowedToContact']"
      And I wait for 3 sec

      When I click on element with xpath "//button[@id='thirdPartyButton']"
      When I dismiss alert

      Then I click on element with xpath "//button[@id='formSubmit']"
      And I wait for 3 sec
      Then element with xpath "//b[@name='countryOfOrigin']" should contain text "France"
      Then element with xpath " //b[@name='agreedToPrivacyPolicy']" should contain text "true"
      Then element with xpath "//b[@name='lastName']" should contain text "Sen"
      Then element with xpath "//b[@name='phone']" should contain text "5104289398"
      Then element with xpath "//b[@name='password']" should contain text "[entered]"
      Then element with xpath "//b[@name='allowedToContact']" should contain text "true"
      Then element with xpath "//b[@name='name']" should contain text "Elena Anna Sen"
      Then element with xpath "//b[@name='address']" should contain text "1234 My Address"
      Then element with xpath "//b[@name='thirdPartyAgreement']" should contain text "declined"
      Then element with xpath "//b[@name='username']" should contain text "ElenaS"
      Then element with xpath "//b[@name='location']" should contain text "Los Altos, CA 94022"
      Then element with xpath "//b[@name='gender']" should contain text "female"
      Then element with xpath "//b[@name='middleName']" should contain text "Anna"
      Then element with xpath "//b[@name='firstName']" should contain text "Elena"
      Then element with xpath "//b[@name='email']" should contain text "123aa@gmail.com"
      And I wait for 3 sec










