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


  @predefined1
  Scenario: Predefined steps for Quote - Username validation
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@name='username']" should be present
    When I type "a" into element with xpath "//input[@name='username']"
    When I click on element with xpath "//label[contains(text(),'Username')]"
    Then element with xpath "//label[@id='username-error']" should be present

  @predefined1
  Scenario: Predefined steps for Quote - Email validation
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@name='email']" should be present
    When I type "abc" into element with xpath "//input[@name='email']"
    When I click on element with xpath "//label[contains(text(),'Email')]"
    Then element with xpath "//label[@id='email-error']" should be present

  @predefined1
  Scenario: Predefined steps for Quote - Confirm Password validation
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='confirmPassword']" should be present
    Then element with xpath "//input[@id='confirmPassword']" should be disabled

  @predefined1
  Scenario: Predefined steps for Quote - Name validation
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='name']" should be present
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be present
    When I type "Chichoi" into element with xpath "//input[@id='firstName']"
    When I type "Kenneth" into element with xpath "//input[@id='middleName']"
    When I type "Chan" into element with xpath "//input[@id='lastName']"
    When I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name'][@value='Chichoi Kenneth Chan']" should be present

  @predefined1
  Scenario: Predefined steps for Quote - DOB validation
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='dateOfBirth']" should be present
    When I click on element with xpath "//input[@id='dateOfBirth']"
    When I type "02/20/2000" into element with xpath "//input[@id='dateOfBirth']"
    When I click on element with xpath "//label[contains(text(),'Date of Birth')]"
    Then element with xpath "//b[@name='dateOfBirth'][contains(text(),'02/20/2000')]" should be present

  @predefined1
  Scenario: Predefined steps for Quote - 3rd party agreement validation
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//button[@id='thirdPartyButton']" should be present
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    When I accept alert
    Then element with xpath "//span[@id='thirdPartyResponseMessage'][contains(text(),'You accepted third party agreement.')]" should be present
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    When I dismiss alert
    Then element with xpath "//span[@id='thirdPartyResponseMessage'][contains(text(),'You did not accept third party agreement.')]" should be present