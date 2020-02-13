@flowers
  Feature: Get Flowers 
    @flowers1
    Scenario: Get Flowers Price
      Given I open url "https://urbanstems.com/"
#      Then I click on element with xpath ""
      Then I click on element with xpath "//div[@class='header__menu navigation navigation-main d-none d-lg-block']//div[@class='menu-group desktop-navigation']//a[@id='flowers'] "
      And I click on element using JavaScript with xpath "(//span[contains(text(),'Mixed Bouquets')])[1]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'The Classics Collection')])[1]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'Birthday')])[1]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'$76 - $100')])[1]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'Refine by Color: Pink')])[1]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),' 19 - 28 Stems')])[1]"
      Then I wait for element with xpath "//a[contains(text(),'ouble The Confetti')][1]" to be present
      And I wait for 10 sec

      @flowers2
      Scenario: To Verify Flowers
        Given I open url "https://urbanstems.com/"
        Then I click on element with xpath " Given I open url "
