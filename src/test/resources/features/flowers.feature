@flowers 
Feature: Get flowers rate
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


    And I clear element with xpath "//input[@id='delivery-bar-input']"
    And I type "San Francisco" into element with xpath "//input[@id='delivery-bar-input']"
    And I clear element with xpath "//input[@id='datepicker6avule2rf3w']"



  