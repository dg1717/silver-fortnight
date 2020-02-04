@flowers
  Feature: Get flowers rate

    @flowers_1
    Scenario: flowers rate
      Given I open url "https://urbanstems.com"
      When I click on element with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
      And I click on element using JavaScript with xpath "//span[contains(@title,'Mixed Bouquets')]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'The Classics Collection')])[1]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'Birthday')])[1]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'Up to $55')])[1]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'Pink')])[1]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),' 19 - 28 Stems')])[1]"
      And element with xpath "//a[@class='link product-name__link']" should be displayed
      And element with xpath "//span[@content='52.00']" should be displayed
      Then I wait for 10 sec



    @flowers_2
    Scenario: city selected homework
      Given I open url "https://urbanstems.com"
      When I click on element using JavaScript with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
      Then I click on element using JavaScript with xpath "//input[@id='delivery-bar-input']"
      Then I clear element with xpath "//span[@class='algolia-autocomplete']"
#      Then I clear element with xpath "(//span[@class='algolia-autocomplete']/input)[2]"
#      Then I clear element with xpath "//meta[@name='description']"
      Then I wait for 3 sec
      And I type "San Francisco, CA, USA" into element with xpath "//input[@id='delivery-bar-input']"
      Then element with xpath "//input[@id='delivery-bar-input']" should have attribute "value" as "San Francisco, CA, USA"
      Then I wait for 7 sec


      @flowers_3-date-type-homework
     Scenario: Date type
        Given I open url "https://urbanstems.com"
        When I click on element using JavaScript with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
        Then I clear element with xpath "//input[contains(@id,'datepicker')]"
        Then I wait for 3 sec
        And I type "Fri Feb 14 2020" into element with xpath "//input[contains(@id,'datepicker')]"
        Then element with xpath "//input[contains(@id,'datepicker')]" should have attribute "value" as "Fri Feb 14 2020"
        Then I wait for 3 sec

      @flower3_3_2-date-picker-homework
        Scenario: Date picker
        Given I open url "https://urbanstems.com"
        When I click on element using JavaScript with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
        Then I clear element with xpath "//input[contains(@id,'datepicker')]"
        Then I wait for 3 sec
#        Then I click on element using JavaScript with xpath "//input[contains(@id,'datepicker')]"
        When I click on element with xpath "//input[contains(@id,'datepicker')]"
#        And I click on element with xpath "//button[@class='pika-prev is-disabled']"
#        And I click on element with xpath "//button[@class='pika-next is-disabled']"
        And I click on element with xpath "//option[contains(text(),'2020')]"
        And I click on element with xpath "//option[contains(text(),'February')]"
        And I click on element using JavaScript with xpath "//table[@class='pika-table']//td[@data-day='14']"
        Then element with xpath "//input[contains(@id,'datepicker')]" should have text as "Fri Feb 14 2020"
#        Then element with xpath "//input[contains(@id,'datepicker')]" should have attribute "value" as "Fri Feb 14 2020"
        Then I wait for 3 sec


      @flowers_4
      Scenario: Verification valentine's shop
        Given I open url "https://urbanstems.com/"
        When I click on element with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Shop')]"
#        And I click on element using JavaScript with xpath "(//span[contains(text(),'Valentine Bouquets')])[1]"
        And I click on element using JavaScript with xpath "//div[@class='card collapsible-sm refinement refinement-category']//li[1]//button[1]//i[1]"
        And I click on element using JavaScript with xpath "//span[contains(text(),'Anniversary')]"
        And I click on element using JavaScript with xpath "//span[contains(text(),'$56 - $75')]"
        And I click on element using JavaScript with xpath "//span[contains(text(),'Red')]"
        Then element with xpath "//span[@class='value'][@content='75.00']" should be displayed
        Then I wait for 5 sec

       @flowers_5_homework
       Scenario: Schedule delivery
         Given I open url "https://urbanstems.com/"
