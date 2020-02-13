@quote
Feature: Quote Scenarios
  @qoute1
  Scenario: Verify Username field
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I type "a" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    And I wait for 3 sec
    Then I clear element with xpath "//input[@name='username']"
    When I type "ab" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed
    And I wait for 3 sec

  @quote2
  Scenario: Verify Email field
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I type "Ra" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 3 sec
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I clear element with xpath "//input[@name='email']"
    When I type "rhama.devalla@gamil.com" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 3 sec
    Then element with xpath "//label[@id='email-error']" should not be displayed

  @quote
  Scenario: Verification of Date of Birth

    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
#      When I type "10/23/1990" into element with xpath "//input[@id='dateOfBirth']"
#      Then I click on element with xpath "//button[@id='formSubmit']"
#      Then I clear element with xpath "//input[@id='dateOfBirth']"
      When I click on element with xpath "//input[@id='dateOfBirth']"
#      Then I click on element with xpath "//option[contains(text(),'May')]"
##      And I click on element with xpath "//option[contains(text(),'1993')]"
##      And I click on element with xpath "//a[contains(text(),'13')]"
       And I click on element with xpath "//*[text()='Prev']"
      And I click on element with xpath "//*[text()='Next']"
      And I click on element with xpath "//*[@value='8']"
      And I click on element with xpath "//*[@value='2019']"
      And I click on element with xpath "//a[text()='24']"
      And I wait for 7 sec
#      Then element with xpath "//input[@id='dateOfBirth']" should contain text "09/24/2019"
      Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "09/24/2019"

  @quote4
  Scenario: Verification of 3rd party
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I click on element with xpath "//div/button[@id='thirdPartyButton']"
    When I dismiss alert
    And element with xpath "//div/span[contains(text(),'not accept third party agreement.')]" should be displayed
    When I click on element with xpath "//div/button[@id='thirdPartyButton']"
    When I accept alert
    And element with xpath "//div/span[contains(text(),'You accepted third party agreement.')]" should be displayed
    And I wait for 5 sec



    @quote5
    Scenario: Verification for Additional information
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
      When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
      And I type "Rama" into element with xpath "//input[@id='contactPersonName']"
      And I type "(669) 258-7255" into element with xpath " //input[@id='contactPersonPhone']"
      Then element with xpath "//input[@id='contactPersonName']" should have attribute "value" as "Rama"
      And I switch to default content

      @quote6
      Scenario: Verification of mouse over functionality
        Given I open url "https://skryabin.com/market/quote.html"
        Then I should see page title as "Get a Quote"
        When I click on element with xpath "//*[@value='Ford']"
        Then element with xpath "//*[@value='Ford']" should be selected
        When I mouse over element with xpath "//*[@value='Toyota']"
       When I click on element with xpath "//*[@value='Toyota']"
        Then element with xpath "//*[@value='Toyota']" should be selected

       @quote7
       Scenario: Verification of attached file
         Given I open url "https://skryabin.com/market/quote.html"
         Then I should see page title as "Get a Quote"
         When I type "/Users/ramadevi/Documents/screenshot.png" into element with xpath "//input[@id='attachment']"
         And I wait for 5 sec


         @quote8
         Scenario: Predefined steps for Quote
           Given I open url "https://skryabin.com/market/quote.html"
           Then I should see page title as "Get a Quote"
           When I click on element with xpath "//input[@id='name']"
           Then I wait for 5 sec
           When I type "Rama" into element with xpath "//input[@id='firstName']"
           Then I type "Devi" into element with xpath "//input[@id='middleName']"
           Then I type "Devalla" into element with xpath "//input[@id='lastName']"
           Then I click on element with xpath "//span[contains(text(),'Save')]"
           When I click on element with xpath "//select[@name='countryOfOrigin']"
           Then I click on element with xpath "//option[contains(text(),'India')]"
           Then I click on element with xpath "//textarea[@id='address']"
           Then I type "955 Escalon ave" into element with xpath "//textarea[@id='address']"
           Then I click on element with xpath "//input[@name='username']"
           Then I type "Rhama" into element with xpath "//input[@name='username']"
#          Then I type "<Rhama>" into  element with xpath "//input[@name='username']"
           Then I type "rhama.devalla@gamil.com" into element with xpath "//input[@name='email']"
           Then I type "rhama@88" into element with xpath "//input[@id='password']"
           Then I type "rhama@88" into element with xpath "//input[@id='confirmPassword']"
           And I type "6602587255" into element with xpath "//input[@name='phone']"
#        //label[@for='phone']/..//input[@name='phone']
           And  I click on element with xpath " //input[@id='dateOfBirth']"
           Then I click on element with xpath "//option[contains(text(),'May')]"
           And I click on element with xpath "//option[contains(text(),'1993')]"
           And I click on element with xpath "//a[contains(text(),'13')]"
           And I click on element with xpath "//label[3]//input[1]"
           Then I type "Toyota" into element with xpath " //select[@name='carMake']"
#          And I click on element with xpath "//option[@value='Toyota')]"
          And I click on element with xpath " //button[contains(text(),'Related documents (click)')]"
           Then I switch to new window
           And I wait for 5 sec
           Then I switch to first window
           And I wait for 5 sec
           And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
           And I click on element with xpath " //button[@id='formSubmit']"
           Then I wait for 5 sec




