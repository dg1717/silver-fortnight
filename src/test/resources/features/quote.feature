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





