@quote
  Feature: Get flowers rate

  @flower1
    Scenario: DC Flowers rate
      Given I open url "https://urbanstems.com"
      And I should see page title contains "Flower"
      When I click on element with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
#    And I click on element with xpath "//input[@id='delivery-bar-input']"
#    And I clear element with xpath "//input[@id='delivery-bar-input']"
#    And I type "San Francisco, CA, USA" into element with xpath "//input[@id='delivery-bar-input']"
#      Then element with xpath "//input[@id='delivery-bar-input']" should contain text "Washington"
      And I clear element with xpath "//input[contains(@id, 'datepicker')]"
      And I type "Feb 10 2020" into element with xpath "//input[contains(@id, 'datepicker')]"
      And I wait for 3 sec
    #And I click on element using JavaScript with xpath "//button[@class='pika-next']"
      And I click on element using JavaScript with xpath "//span[contains(@title, 'Mixed Bouquets')]"
      And I click on element using JavaScript with xpath "//span[contains(text(), 'The Classics Collection')][1]"
      And I click on element using JavaScript with xpath "//span[contains(text(), 'Birthday')][1]"
      And I wait for 5 sec
#    And I click on element using JavaScript with xpath "//span[contains(text(), 'Up to $55')][1]"
      And I click on element using JavaScript with xpath "//span[contains(@id, 'swatch')][contains(text(),'Orange')]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'< 19 Stems')])[1]"
      And element with xpath "//span[@content='60.00'][1]" should be displayed
      And I wait for 5 sec

  @flower2
    Scenario: NY Flowers rate
      Given I open url "https://urbanstems.com"
      And I should see page title contains "Flower"
      When I click on element with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
      And I click on element with xpath "//input[@id='delivery-bar-input']"
      And I clear element with xpath "//input[@id='delivery-bar-input']"
      And I type "New York, NY, USA" into element with xpath "//input[@id='delivery-bar-input']"
#      Then element with xpath "//input[@id='delivery-bar-input']" should contain text "New York"
      And I clear element with xpath "//input[contains(@id, 'datepicker')]"
      And I type "Feb 14 2020" into element with xpath "//input[contains(@id, 'datepicker')]"
      And I wait for 5 sec
    #And I click on element using JavaScript with xpath "//button[@class='pika-next']"
      And I click on element using JavaScript with xpath "//span[contains(@title, 'Mixed Bouquets')]"
      And I click on element using JavaScript with xpath "//span[contains(text(), 'The Classics Collection')][1]"
      And I wait for 3 sec
      And I click on element using JavaScript with xpath "//span[contains(text(), 'Birthday')][1]"
      And I wait for 3 sec
#    And I click on element using JavaScript with xpath "//span[contains(text(), 'Up to $55')][1]"
      And I click on element using JavaScript with xpath "//span[contains(@id, 'swatch')][contains(text(),'Orange')]"
      And I wait for 5 sec
      And I click on element using JavaScript with xpath "(//span[contains(text(),'< 19 Stems')])[1]"
      And element with xpath "//span[@content='60.00'][1]" should be displayed
      And I wait for 3 sec
