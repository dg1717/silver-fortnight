@flowers
  Feature: Get flowers 

    @flowers1
    Scenario: Flowers rate
      Given I open url "https://urbanstems.com/"
      When I click on element with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
      And I click on element using JavaScript with xpath "//span[contains(@title,'Mixed Bouquets')]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'The Classics Collection')])[1]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'Birthday')])[1]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),' Up to $55')])[1]"
      And I click on element using JavaScript with xpath "//span[contains(@id,'swatch')][contains(text(),'Pink')]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'19 - 28 Stems')])[1]"
      Then element with xpath "//a[contains(text(),'Double The Confetti')]" should be displayed
      Then element with xpath "(//span[@content='80.00'])[1]" should be displayed

    @flowers2
    Scenario: Schedule Delivery
      Given I open url "https://www.urbanstems.com/flowers"
      When I click on element using JavaScript with xpath "//span[@class='cat-name'][contains(text(),'Flowers')]"
      And I wait for 3 sec
      When I clear element with xpath "//script[@id='searchResultsScript']/..//input[@class='delivery-bar-input aa-input']"
      And I wait for 3 sec
      When I type "Dallas, TX, USA" into element with xpath "//input[@id='delivery-bar-input']"
      And I wait for 5 sec
      When I clear element with xpath "//input[contains(@id,'datepicker')]"
      And I type "Fri Feb 22 2020" into element with xpath "//input[contains(@id,'datepicker')]"
      And I click on element using JavaScript with xpath "//span[contains(@title,'Mixed Bouquets')]"
      And I click on element using JavaScript with xpath "//button[contains(@data-href,'Classics')]"
      And I click on element using JavaScript with xpath "//*[contains(@data-href,'birthday')]"
      And I click on element using JavaScript with xpath "//*[contains(@data-href,'pmax=56')]"
      And I click on element using JavaScript with xpath "//*[contains(@data-href,'multi')]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'19 - 28 Stems')])[1]"
      And element with xpath "//div[contains(@class,'product-grid')]" should be displayed
      Then element with xpath "//div[contains(@class,'product-grid')]" should contain text "THE CONFETTI"
      Then element with xpath "//span[@content='52.00'] " should contain text "$52"
      And I wait for 10 sec



