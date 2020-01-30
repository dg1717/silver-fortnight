@quote
Feature: Quote Scenarios
  @quote1
  Scenario: Username field verification
    Given I open url "https://skryabin.com/market/quote.html"
    And I should see page title as "Get a Quote"
    When I type "a" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    And I wait for 10 sec
    When I clear element with xpath "//input[@name='username']"
    And I type "ab" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed
    And I wait for 10 sec

     @quote2
     Scenario: email field verification
       Given I open url "https://skryabin.com/market/quote.html"
       And I should see page title as "Get a Quote"
       When I type "ab" into element with xpath "//input[@name='username']"
       Then I type "rh" into element with xpath "//input[@name='email']"
       And I click on element with xpath "//button[@id='formSubmit']"
       Then element with xpath "//label[@id='email-error']" should be displayed
       And I wait for 5 sec
       When I clear element with xpath "//input[@name='email']"
       And I type "rhama.devalla@gmai.com" into element with xpath "//input[@name='email']"
       Then element with xpath "//label[@id='email-error']" should not be displayed
       And I wait for 5 sec

       @quote3
       Scenario:name field verification
         Given I open url "https://skryabin.com/market/quote.html"
         And I click on element with xpath "//input[@id='name']"
#         And I switch to new window with xpath "//div[@id='nameDialog']"
#         And I switch to iframe with xpath "//div[@id='nameDialog']"
         And I click on element with xpath "//span[contains(text(),'Save')]"
         And I click on element with xpath "//button[@id='formSubmit']"
         Then element with xpath "//label[@id='name-error']" should be displayed
         And I wait for 5 sec
         Then I click on element with xpath "//input[@id='name']"
         When I type "Rama" into element with xpath "//input[@id='firstName']"
         And I type "Devi" into element with xpath "//input[@id='lastName']"
         And I click on element with xpath "//span[contains(text(),'Cancel')]"
         And I click on element with xpath "//button[@id='formSubmit']"
         Then element with xpath "//label[@id='name-error']" should be displayed
         And I wait for 5 sec
         Then I click on element with xpath "//input[@id='name']"
         When I type "Rama" into element with xpath "//input[@id='firstName']"
         And I type "Devi" into element with xpath "//input[@id='lastName']"
         And I click on element with xpath "//span[contains(text(),'Save')]"

         @quote4
         Scenario:Date of Birth fiel verification
           Given I open url "https://skryabin.com/market/quote.html"
           When I type "10/10/1990" into element with xpath "//input[@id='dateOfBirth']"
           And I wait for 5 sec
           And I click on element with xpath "//button[@id='formSubmit']"

           @quote5
           Scenario: Date of Birth Verification from date Picker
             Given I open url "https://skryabin.com/market/quote.html"
             And  I click on element with xpath " //input[@id='dateOfBirth']"
             Then I click on element with xpath "//option[contains(text(),'May')]"
             And I click on element with xpath "//option[contains(text(),'1993')]"
             And I click on element with xpath "//a[contains(text(),'13')]"


             @quote6
             Scenario:3rd party agreement verfication
               Given I open url "https://skryabin.com/market/quote.html"
               When I click on element with xpath "//div[@class='container-fluid']//div[@class='row']"
               

    