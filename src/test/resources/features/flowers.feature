@flowers
  Feature: Get flowers rate
    @Flowers
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
      Then I type "4970 El Camino Real, #110, Los Alto, CA 94022" into element with xpath "//input[@id='delivery-bar-input']"
      And I clear element with xpath "//input[@class='datepicker']"
      And I type "Fri 02/14/2020" into element with xpath "//input[@class='datepicker']"
      Then I wait for 2 sec

    @Flowers2
    Scenario: Send flower for your love
      Given I open url "https://urbanstems.com/"
      When I click on element with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
      And I click on element using JavaScript with xpath "//span[contains(@title,'Mixed Bouquets')]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'The Classics Collection')])[1]"
#      Then element with xpath "//a[contains(text(),'Double The Confetti')]" should be displayed
      Then I click on element using JavaScript with xpath "//*[contains(text(),'The Firecracker')]"
      Then I click on element using JavaScript with xpath "//button[@class='add-to-cart btn btn-primary col-12 text-uppercase']"
      When I click on element using JavaScript with xpath "//input[@id='delivery-bar-input']"
#      When I scroll to the element with xpath "//*[@id='delivery-bar-input']" with offset 1
#      When I clear combobox element with xpath "//*[@id='delivery-bar-input']"
#      Then I wait for 2 sec
      Then I type "4970 El Camino Real, #110, Los Alto, CA 94022" into element with xpath "//input[@id='delivery-bar-input']"
      And I clear element with xpath "//input[@class='datepicker']"
      And I type "Fri 02/14/2020" into element with xpath "//input[@class='datepicker']"
      When I click on element using JavaScript with xpath "//button[@class='add-to-cart btn btn-primary col-12 text-uppercase']"
      When I click on element using JavaScript with xpath "//a[@class='btn btn-primary btn-block checkout-btn ']"
      When I click on element using JavaScript with xpath "//a[@class='btn btn-block btn-primary checkout-as-guest']"
      Then I wait for 20 sec
