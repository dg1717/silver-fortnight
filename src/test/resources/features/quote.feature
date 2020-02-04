@quote
Feature: Quote Scenarios
  @qoute1
  Scenario: Verify Username field
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I type "n" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    And I wait for 3 sec
    Then I clear element with xpath "//input[@name='username']"
    When I type "Ni" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed
    And I wait for 3 sec

    @quote2
    Scenario: Verify Email field Functionality
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
      When I type "vrazhagunila" into element with xpath "//input[@name='email']"
      Then I click on element with xpath "//button[@id='formSubmit']"
      And I wait for 3 sec
      Then element with xpath "//label[@id='email-error']" should be displayed
      Then I clear element with xpath "//input[@name='email']"
      When I type "vrazhagunila@gmail" into element with xpath "//input[@name='email']"
      Then I click on element with xpath "//button[@id='formSubmit']"
      And I wait for 3 sec
      Then element with xpath "//label[@id='email-error']" should not be displayed

      @quote3
      Scenario: Verify Name Input Field Functionality
        Given I open url "https://skryabin.com/market/quote.html"
        Then I should see page title as "Get a Quote"
        When I click on element with xpath "//input[@id='name']"
        Then I wait for element with xpath "//div[@id='nameDialog']//div[1]" to be present
        Then I type "Nila" into element with xpath "//input[@id='firstName']"
        And I type "Thiru" into element with xpath "//input[@id='middleName']"
        And I type "Raju" into element with xpath "//input[@id='lastName']"
        And I click on element with xpath "//span[contains(text(),'Save')]"
        And I wait for 3 sec
        Then element with xpath "//input[@id='name']" should be displayed
        Then I wait for 3 sec
        When I click on element with xpath "//input[@id='name']"
        Then I wait for element with xpath "//div[@id='nameDialog']//div[1]" to be present
        Then I type "Nila" into element with xpath "//input[@id='firstName']"
        And I type " " into element with xpath "//input[@id='middleName']"
        And I type "Raju" into element with xpath "//input[@id='lastName']"
        And I click on element with xpath "//span[contains(text(),'Save')]"
        And I wait for 3 sec
        Then element with xpath "//input[@id='name']" should be displayed
        Then I wait for 3 sec

        @quote4
         Scenario: Validate Date of Birth Input -By Date Picker 2
          Given I open url "https://skryabin.com/market/quote.html"
          Then I should see page title as "Get a Quote"   
          Then I click on element with xpath "//input[@id='dateOfBirth']"
          Then I click on element with xpath "//*[text()='Prev']"
          Then I click on element with xpath "//*[text()='Next']"
          And I click on element with xpath "//*[@value='9']"
          And I click on element with xpath "//*[@value='1984']"
          And I click on element with xpath "//a[text()='7']"
          And I wait for 4 sec
          Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "10/07/1984"

        @qoute5
        Scenario: Validate Date of Birth -By Date
          Given I open url "https://skryabin.com/market/quote.html"
          Then I should see page title as "Get a Quote"
          When I type "10/07/1984" into element with xpath "//input[@id='dateOfBirth']"
          Then element with xpath "//input[@id='dateOfBirth']" should be displayed
          And I wait for 3 sec

        @quote6
        Scenario: Verify "accept 3rd party agreement"  Functionality
          Given I open url "https://skryabin.com/market/quote.html"
          Then I should see page title as "Get a Quote"
          When I click on element with xpath "//button[@id='thirdPartyButton']"
          Then I dismiss alert
          And I wait for 5 sec
          Then element with xpath "//span[@id='thirdPartyResponseMessage']" should be displayed
          And I wait for 3 sec
          When I click on element with xpath "//button[@id='thirdPartyButton']"
          Then I switch to new window
          Then I accept alert
          And I wait for 5 sec
          Then element with xpath "//span[@id='thirdPartyResponseMessage']" should be displayed
          And I wait for 3 sec

        @quote7
        Scenario: Verify "Additional Info"  Switching to iFrame
          Given I open url "https://skryabin.com/market/quote.html"
          When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
          Then I type "Thiru" into element with xpath "//input[@id='contactPersonName']"
          Then I type "1234567890" into element with xpath "//input[@id='contactPersonPhone']"
          And element with xpath "//input[@id='contactPersonName']" should have attribute "value" as "Thiru"
          And element with xpath "//input[@id='contactPersonPhone']" should have attribute "value" as "1234567890"
          And I switch to default content
          And I wait for 2 sec

        @quote8
        Scenario: Verify Car Make Functionality -BY Mouse Over
          Given I open url "https://skryabin.com/market/quote.html"
          When I click on element with xpath "//*[@value='Toyota']"
          Then element with xpath "//*[@value='Toyota']" should be selected
          Then I mouse over element with xpath "//*[@value='Toyota']"
          When I click on element with xpath "//*[@value='Ford']"
          Then element with xpath "//*[@value='Ford']" should be selected
          And I wait for 2 sec

        @quote9
        Scenario: Verify Attached File
          Given I open url "https://skryabin.com/market/quote.html"
          When I type "C:\Users\rnila\Desktop\Logs\log1.txt" into element with xpath "//input[@id='attachment']"
          And I wait for 5 sec

        @quote10
        Scenario: Validate the "View documents" functionality
         Given I open url "https://skryabin.com/market/quote.html"
         When I click on element with xpath "//a[contains(@id,'link')]"
         And I wait for 2 sec
         Then I switch to new window
         And I should see page title as "Documents Page"
         And I wait for 2 sec
          Then I switch to default content
         And I wait for 2 sec

         @quote11
         Scenario: Validates the End-to-End Quote page workflow
           Given I open url "https://skryabin.com/market/quote.html"
           Then I click on element with xpath "//input[@id='name']"
           Then I type "Nila" into element with xpath "//input[@id='firstName']"
           And I type "Raju" into element with xpath "//input[@id='lastName']"
           Then I click on element with xpath "//span[contains(text(),'Save')]"
           Then element with xpath "//input[@id='name']" should have attribute "value" as "Nila Raju"
           And I wait for 2 sec
           Then I type "vrazhagunila" into element with xpath "//label[text()='Username']/..//input[@name='username']"
           And I type "vrazhagunila@gmail.com" into element with xpath "//input[contains(@name,'email')]"
           And I wait for 2 sec
           Then I type "12345" into element with xpath "//input[@id='password']"
           Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
           Then I type "1234567890" into element with xpath "//label[text()='Phone Number']/..//input[contains(@name,'phone')]"
           Then I click on element with xpath "//input[@id='dateOfBirth']"
           Then I click on element with xpath "//option[contains(text(),'Oct')]"
           Then I click on element with xpath "//option[@value='1984']"
           Then I click on element with xpath "//a[text()='7']"
           And I wait for 2 sec
           Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "10/07/1984"
           Then I type "3206 Haddon Way" into element with xpath "//label[contains(text(),'Address')]/..//textarea[@id='address']"
           Then I click on element with xpath "//input[@name='gender'] [@value='female']"
           Then I click on element with xpath "//input[@name='allowedToContact']"
           Then I click on element with xpath "//option[contains(@value,'USA')]"
           Then I click on element with xpath "//option[@value='BMW']"
           Then I switch to iframe with xpath "//iframe[@name='additionalInfo']"
           Then I type "Thiru" into element with xpath "//input[@id='contactPersonName']"
           Then I type "1234567890" into element with xpath "//input[@id='contactPersonPhone']"
           Then I switch to default content
           Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
           When I click on element with xpath "//button[@id='formSubmit']"
           Then I switch to new window
           When I click on element with xpath "//button[@id='return']"
           Then I switch to default content
           And I wait for 3 sec