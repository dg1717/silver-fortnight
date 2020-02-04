@predefined
Feature: Quote-test


  @predefined-Quote-name-input
  Scenario: Validate name input Field Functionality.
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='name']" should be displayed
    When I click on element using JavaScript with xpath "//input[@id='name']"
    Then element with xpath "//input[@id='firstName']" should be displayed
    And element with xpath "//input[@id='middleName']" should be displayed
    And element with xpath "//input[@id='middleName']" should be displayed
    When I type "f" into element with xpath "//input[@id='firstName']"
    And I type "m" into element with xpath "//input[@id='middleName']"
    And I type "l" into element with xpath "//input[@id='lastName']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name'][@value='f m l']" should be displayed


  @predefined-Quote-Date-of-birth-input
  Scenario: Validate Date of birth input Field Functionality using the format: mm/dd/yyyy
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='dateOfBirth']" should be displayed
    When I type "01/01/1990" into element with xpath "//input[@id='dateOfBirth']"
    Then element with xpath "//input[@id='dateOfBirth']" should be displayed


  Scenario: Validate Date of birth input field by typing using the date-picker
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='dateOfBirth']" should be displayed
    When I click on element using JavaScript with xpath "//label[contains(text(),'Date of Birth')]"
    Then element with xpath "//div[@id='ui-datepicker-div']" should be displayed
    When I click on element using JavaScript with xpath "//select[@class='ui-datepicker-month']"
    When I click on element using JavaScript with xpath "//tr[2]//td[1]//a[1]"
    Then element with xpath "//tr[2]//td[1]//a[1]" should be displayed


  @predefined-Quote-3rd-party-agreement(click)
  Scenario: Validate 3rd party agreement(click) functionality
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    And element with xpath "//button[@id='thirdPartyButton']" should be displayed
    When I click on element using JavaScript with xpath "//button[@id='thirdPartyButton']"
    Then I switch to new window
    When I accept alert
    Then element with xpath "//span[text()='You accepted third party agreement.']" should be displayed
    Then I wait for 1 sec
    When I click on element using JavaScript with xpath "//button[@id='thirdPartyButton']"
    When I dismiss alert
    Then element with xpath "//span[text()='You did not accept third party agreement.']" should be displayed

    @predefined-Quote-Data-picker
    Scenario: Verification of Date of birth - Data_picker
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
      When I click on element with xpath "//input[@id='dateOfBirth']"
      And I click on element with xpath "//span[text()='Prev']"
      And I click on element with xpath "//span[text()='Next']"
      And I click on element with xpath "//*[@value='9']"
      And I click on element with xpath "//*[@value='2019']"
      And I click on element with xpath "//a[text()='24']"
      And I wait for 3 sec
#      Then element with xpath "//input[@id='dateOfBirth']" should have text as "10/24/2019"
      Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "10/24/2019"


    @predefined-Quote-3-party
    Scenario: Verification of 3 party
      Given I open url "https://skryabin.com/market/quote.html"
      Then I click on element with xpath "//button[@id='thirdPartyButton']"
      When I dismiss alert
      Then element with xpath "//span[contains(text(),'not accept')]" should be displayed
      Then I click on element with xpath "//button[@id='thirdPartyButton']"
      When I accept alert
      Then element with xpath "//span[contains(text(),'You accepted')]" should be displayed

     @predefined-Quote-Additional-information
     Scenario: Verification of Additional information
       Given I open url "https://skryabin.com/market/quote.html"
       When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
       And I type "Xiaoyan" into element with xpath "//input[@id='contactPersonName']"
       And I type "123-456-7890" into element with xpath "//input[@id='contactPersonPhone']"
       Then element with xpath "//input[@id='contactPersonName']" should have attribute "value" as "Xiaoyan"
       Then element with xpath "//input[@id='contactPersonPhone']" should have attribute "value" as "123-456-7890"
       Then I wait for 3 sec
       And I switch to default content


      @predefined-Quote-Related-new-window-homework
      Scenario: Verification related documents
        Given I open url "https://skryabin.com/market/quote.html"
        When I click on element with xpath "//button[contains(text(),'Related')]"
        Then I switch to new window
        And element with xpath "//h4[text()='Documents List:']" should be displayed
        Then I switch to first window
        When I click on element with xpath "//a[text()='View documents']"
        Then I switch to new window
        And element with xpath "//h4[text()='Documents List:']" should be displayed
        Then I switch to first window



      @predefined-Quote-carmaker
      Scenario: Verification of mouse over functionly
        Given I open url "https://skryabin.com/market/quote.html"
#        Then I mouse over element with xpath "//*[@value='Ford']"
        When I click on element with xpath "//*[@value='Ford']"
        Then element with xpath "//*[@value='Ford']" should be selected
        Then I wait for 2 sec
        Then I mouse over element with xpath "//*[@value='BMW']"
        When I click on element with xpath "//*[@value='BMW']"
        Then element with xpath "//*[@value='BMW']" should be selected
        Then I wait for 2 sec



      @predefined-Quote-attached-file
      Scenario: Verification of attached file
        Given I open url "https://skryabin.com/market/quote.html"
        When I type "/Users/xyz/Desktop/screencap_0126.png" into element with xpath "//input[@id='attachment']"
        Then I wait for 5 sec
        When I type "/Users/xyz/Desktop/homework.png" into element with xpath "//input[@id='attachment']"
        Then I wait for 5 sec

      @Quote-end-to-end-Quote-homework
      Scenario: Verification of End-to-End Quote page workflow
        Given I open url "https://skryabin.com/market/quote.html"
        When I click on element with xpath "//input[@id='name']"
        Then I switch to new window
        When I type "f" into element with xpath "//input[@id='firstName']"
        And I type "m" into element with xpath "//input[@id='middleName']"
        And I type "l" into element with xpath "//input[@id='lastName']"
        When I click on element with xpath "//span[text()='Save']"
        When I click on element with xpath "//select[@name='countryOfOrigin']"
        When I click on element with xpath "//option[contains(text(),'Austria')]"
        Then element with xpath "//option[contains(text(),'Austria')]" should be selected
        When I type "4970 El Camino Real, Suite 110, Los Altos, CA 94022" into element with xpath "//textarea[@id='address']"
        And I type "abc" into element with xpath "//input[@name='username']"
        And I type "abc@abc.com" into element with xpath "//input[@name='email']"
        And I type "123456" into element with xpath "//input[@id='password']"
        And I type "123456" into element with xpath "//input[@id='confirmPassword']"
        And I type "1234567890" into element with xpath "//input[@name='phone']"
        And I type "02/03/2020" into element with xpath "//input[@id='dateOfBirth']"
        When I click on element with xpath "//input[@value='male']"
        And I click on element using JavaScript with xpath "//input[@name='allowedToContact']"
        And I click on element with xpath "//option[contains(text(),'Ford')]"
        When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
        And I type "abc" into element with xpath "//input[@id='contactPersonName']"
        And I type "1231231234" into element with xpath "//input[@id='contactPersonPhone']"
        Then element with xpath "//input[@id='contactPersonName']" should have attribute "value" as "abc"
        Then element with xpath "//input[@id='contactPersonPhone']" should have attribute "value" as "1231231234"
        Then I wait for 3 sec
        Then I switch to default content
        When I click on element with xpath "//button[@id='thirdPartyButton']"
        And I accept alert
        Then element with xpath "//span[@id='thirdPartyResponseMessage']" should contain text "You accepted third party agreement."
        When I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
        And I click on element with xpath "//button[@id='formSubmit']"
        Then element with xpath "//legend[@class='applicationResult']" should contain text "Submitted Application"
        When I click on element with xpath "//button[@id='return']"
        Then I should see page title as "Get a Quote"
