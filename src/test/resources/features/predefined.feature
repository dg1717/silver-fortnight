@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
  Scenario: Predefined//div[@id='results'] steps for Yahoo
    Given I open url "https://us.yahoo.com/"
    Then I should see page title as "Yahoo"
    Then element//div[@id='results']nt with xpath "//input[@id='header-search-input']" should be present
    When I type "Cucumber" into element with xpath "//input[@id='header-search-input']"
    When I click on element with xpath "//button[@id='header-desktop-search-button']//*[@class='Cur(p)']"
    Then I wait for 3 sec
    Then element with xpath "//div[@id='results']" should be present

  @predefined3
  Scenario: Predefined steps for Bing
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then element with xpath "//input[@id='sb_form_q']" should be present
    When I type "Cucumber " into element with xpath "//input[@id='sb_form_q']"
    When I click on element with xpath "//body/div[contains(@class,'hp_body')]/div[@class='hp_cont']/div[@class='sbox']/form[@id='sb_form']/label[@class='search icon tooltip']/*[1]"
    Then I wait for 3 sec
    Then I wait for element with xpath "//div[@id='results']" to be present
    Then element with xpath "//div[@id='results']" should contain text "Cucumber"


    @predefine4
    Scenario: Predefined steps for DuckDuckGo
      Given I open url "https://duckduckgo.com/"
      Then I should see page title as "DuckDuckGo"
      Then element with xpath "//form[@id='search_form_homepage_top']//input[contains(@name,'q')]" should be present
      When I type "Cucumber" into element with xpath "//form[@id='search_form_homepage_top']//input[contains(@name,'q')]"
      When I click on element with xpath "//form[@id='search_form_homepage_top']//input[contains(@class,'js-search-button')]"
      Then I wait for 3 sec
      Then I wait for element with xpath "/div[@id='ra-0']//div[@class='result__extras js-result-extras']" to be present
      Then element with xpath "/div[@id='ra-0']//div[@class='result__extras js-result-extras']" should contain text "Cucumber"


  @predefine4
  Scenario: Predefined steps for Google
    Given I open url "https://www.google.com/"
    Then  I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Protein" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//div[@class='FPdoLc tfB0Bf']//input[@name='btnK']"
    Then I wait for 3 sec
    Then I wait for element with xpath "//div[@id='hdtbSum']" to be present
    Then element with xpath "//div[@id='hdtbSum']" should contain text "Protein"


    







    