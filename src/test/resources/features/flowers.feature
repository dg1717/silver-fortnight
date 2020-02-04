@flowers
Feature: Get Flowers
  @flowers1
  Scenario: Get Flower's Rate
    Given I open url "https://urbanstems.com/"
    When I click on element with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
    And I click on element using JavaScript with xpath "//span[contains(@title,'Mixed Bouquets')]"
    And I click on element using JavaScript with xpath "(//span[contains(text(),'The Classics Collection')])[1]"
    And I click on element using JavaScript with xpath "(//span[contains(text(),'Birthday')])[1]"
    And I click on element using JavaScript with xpath "(//span[contains(text(),' Up to $55')])[1]"
    And I click on element using JavaScript with xpath "//span[contains(@id,'swatch')][contains(text(),'Pink')]"
    And I click on element using JavaScript with xpath "(//span[contains(text(),'19 - 28 Stems')])[1]"
    Then I wait for 3 sec
    Then element with xpath "//a[contains(text(),'Double The Confetti')]" should be displayed
    Then element with xpath "(//span[@content='80.00'])[1]" should be displayed

  @flowers2
  Scenario: Get Sending To and Delivery Date
    Given I open url "https://urbanstems.com/"
    When I click on element with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
    And I click on element with xpath "//input[@id='delivery-bar-input']"
    Then I clear element with xpath "//input[@id='delivery-bar-input']"
    And I wait for 2 sec
    When I type "Mountain View, CA, USA" into element with xpath "//input[@id='delivery-bar-input']"
    And I click on element using JavaScript with xpath "//input[@class='datepicker']"
    And I clear element with xpath "//input[@class='datepicker']"
    And I click on element using JavaScript with xpath "//option[contains(text(),'March')]"
    And I click on element using JavaScript with xpath "//option[contains(text(),'2020')]"
    And I click on element using JavaScript with xpath "//td[@class='is-selected']/..//button[text()='2']"
    And I wait for 4 sec
    Then element with xpath "//input[@class='datepicker']" should have attribute "value" as "Mon Mar 02 2020"
    And I wait for 3 sec