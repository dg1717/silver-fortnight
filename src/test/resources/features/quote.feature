@quote
Feature: Quote Scenarios
  
  @quote1
  Scenario: Username field verification
    Given I open url "http://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "a" into element with xpath "//input[@name='username']"
    And I wait for 2 sec
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    And I wait for 2 sec
    When I clear element with xpath "//input[@name='username']"
    And I type "ab" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed

    @quote2
    Scenario: Email field verification
      Given I open url "https://skryabin.com/market/quote.html"
      And  I should see page title as "Get a Quote"
      When I type "olesia.emodelsgmail.com" into element with xpath "//input[@name='email']"
      And I wait for 2 sec
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='email-error']" should be displayed
      And I wait for 2 sec
      When I clear element with xpath "//input[@name='email']"
      And I type "olesia.emodels@gmail.com" into element with xpath "//input[@name='email']"
      And I wait for 2 sec
      And element with xpath "//label[@id='email-error']" should not be displayed

      @quote3
      Scenario: Name Input field functionality
        Given I open url "https://skryabin.com/market/quote.html"
        And I should see page title as "Get a Quote"
        And I wait for 2 sec
        When I click on element with xpath "//input[@id='name']"
        And I type "vasya" into element with xpath "//input[@id='firstName']"
        When I type "v" into element with xpath "//input[@id='middleName']"
        And I type "vasilenko" into element with xpath "//input[@id='lastName']"
        When I click on element with xpath "//span[contains(text(),'Save')]"
        And I wait for 1 sec
        Then element with xpath "//input[@id='name']" should have attribute "value" as "vasya v vasilenko"
        And I wait for 2 sec

  @quote4
  Scenario: Date of Birth field functionality
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    And I wait for 2 sec
    When I click on element with xpath "//input[@id='dateOfBirth']"
    And I type "09/09/1985" into element with xpath "//input[@id='dateOfBirth']"
    And I wait for 2 sec

  @quote5
  Scenario: Date of Birth field functionality - datepicker calendar
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    When I click on element with xpath "//*[@id='dateOfBirth']"
    And I click on element with xpath "//*[text()='Prev']"
    And I click on element with xpath "//*[text()='Next']"
    When I click on element with xpath "//*[@value='8']"
    And I click on element with xpath "//*[@value='1985']"
    When I click on element with xpath "//a[contains(text(),'10')]"
    And I wait for 5 sec
    Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "09/10/1985"


  @quote6
  Scenario: accept 3rd party agreement functionality
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    When I dismiss alert
    And element with xpath "//span[@id='thirdPartyResponseMessage']" should be displayed
    And I wait for 4 sec
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    And I accept alert
    And I wait for 4 sec

  @quote7
  Scenario: verification of additional info - switch functionality
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
    And I type "vasya" into element with xpath "//input[@id='contactPersonName']"
    And I type "123-456-7890" into element with xpath "//input[@id='contactPersonPhone']"
    When element with xpath "//input[@id='contactPersonName']" should have attribute "value" as "vasya"
    And I wait for 4 sec
    And I switch to default content

  @quote8
  Scenario: verification of mouse over functionality
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    And I click on element with xpath "//*[@value='Ford']"
    Then element with xpath "//*[@value='Ford']" should be selected
    When I mouse over element with xpath "//*[@value='Toyota']"
    When I click on element with xpath "//*[@value='Toyota']"
    Then element with xpath "//*[@value='Toyota']" should be selected
    And I wait for 4 sec

  @quote9
  Scenario: verification of attached file
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote" 
    When I type "C:\Users\olesi\Desktop\HTML-task3.png" into element with xpath "//input[@id='attachment']"
    And I wait for 4 sec
    
    @quote10
    Scenario: End to End  Quote page workflow
      Given I open url "https://skryabin.com/market/quote.html"
      When I should see page title as "Get a Quote"
      When I click on element with xpath "//input[@id='name']"
      And I type "Vasya" into element with xpath "//input[@id='firstName']"
      When I type "V" into element with xpath "//input[@id='middleName']"
      And I type "Vasilenko" into element with xpath "//input[@id='lastName']"
      When I click on element with xpath "//span[contains(text(),'Save')]"
      And I wait for 2 sec
      When I click on element with xpath "//select[@name='countryOfOrigin']"
      And I click on element with xpath "//option[contains(text(),'Russia')]"
      And I wait for 2 sec
      Then I click on element with xpath "//textarea[@id='address']"
      Then I type "1212 Tasman Dr" into element with xpath "//textarea[@id='address']"
      And I wait for 2 sec
      When I click on element with xpath "//input[@name='username']"
      And I type "Vasilii" into element with xpath "//input[@name='username']"
      Then I click on element with xpath "//input[@name='email']"
      And I type "olesia.emodels@gmail.com" into element with xpath "//input[@name='email']"
      Then I click on element with xpath "//input[@id='password']"
      And  I type "Vasya123" into element with xpath "//input[@id='password']"
      Then I click on element with xpath "//input[@id='confirmPassword']"
      Then I type "Vasya123" into element with xpath "//input[@id='confirmPassword']"
      And I wait for 2 sec
      Then I click on element with xpath "//input[@name='phone']"
      And I type "669-2548989" into element with xpath "//input[@name='phone']"
      When I click on element with xpath "//input[@id='dateOfBirth']"
      And I type "09/09/1985" into element with xpath "//input[@id='dateOfBirth']"
      Then I click on element with xpath "//div[5]//label[2]//input[1]"
      Then I click on element with xpath "//option[contains(text(),'BMW')]"
      And I wait for 2 sec
      Then I click on element with xpath "//input[@name='allowedToContact']"
      When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
      And I type "vasya" into element with xpath "//input[@id='contactPersonName']"
      And I type "669-2548989" into element with xpath "//input[@id='contactPersonPhone']"
      When element with xpath "//input[@id='contactPersonName']" should have attribute "value" as "vasya"
      And I wait for 2 sec
      And I switch to default content
      When I click on element with xpath "//button[@id='thirdPartyButton']"
      And I accept alert
      Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      And  I wait for 4 sec
      And I click on element with xpath "//button[@id='formSubmit']"

      @quote11
      Scenario: New window
        Given I open url "https://skryabin.com/market/quote.html"
        And I should see page title as "Get a Quote"
        Then I click on element with xpath "//a[@id='link']"
        And I switch to new window
        Then I switch to first window
        And I wait for 4 sec











