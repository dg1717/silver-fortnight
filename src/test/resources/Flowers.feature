@Flowers
  Feature: Get flowers

    @flower1
    Scenario: Flowers rate
      Given I open url "https://urbanstems.com/"
      Then I click on element with xpath "//div[@class='header__menu navigation navigation-main d-none d-lg-block']//div[@class='menu-group desktop-navigation']//a[@id='flowers']"
      And I click on element using JavaScript with xpath "//span[contains(@title,'Mixed Bouquets')]"
      And I click on element using JavaScript with xpath "//span[contains(text(),'The Classics Collection')][1]"
      And I click on element using JavaScript with xpath "//span[contains(text(),'Birthday')][1]"
      And I click on element using JavaScript with xpath "//span[contains(text(),'Up to $55')][1]"
      And I click on element using JavaScript with xpath "//span[contains(@id,'swatch')][contains(text(),'Pink')]"
      And I click on element using JavaScript with xpath "//span[contains(text(),'19 - 28 Stems')][1]"
      Then element with xpath "//a[contains(text(),'Double The Confetti')]" should be displayed
      #Then element with xpath "//span[contains(text(),'$52')]" should be displayed
      Then element with xpath "(//span[@content='52.00'])[1]" should be displayed
      #And I click on element using JavaScript with xpath "//input[@id='delivery-bar-input']"

    @flower2
    Scenario: eFlowers rate
      Given I open url "https://urbanstems.com/"
      Then I click on element with xpath "//div[@class='header__menu navigation navigation-main d-none d-lg-block']//div[@class='menu-group desktop-navigation']//a[@id='flowers']"
      #When I click on element with xpath "//*[@id='dateOfBirth']"
      #And I click on element with xpath "//span[text()='Prev']"
      #And I click on element with xpath "//span[text()='Next']"
      #And I click on element with xpath "//*[@data-handler='selectMonth']//option[@value ='8']"
      #And I click on element with xpath "//*[@data-handler='selectYear']//option[@value ='2019']"
      #And I click on element with xpath "//a[text()='22']"
      #Then element with xpath "//*[@id='dateOfBirth']" should have attribute "value" as "09/22/2019"
      And I click on element with xpath "//input[@id='datepickerpfzk6wu2use']"
      And I click on element with xpath "//*[@id='pika-title-du']"

      And I click on element with xpath "<string>"
      And I click on element with xpath "//select[@class='pika-select pika-select-month']//option[@value = 'March']"



      #And I click on element using JavaScript with xpath "//input[@id='delivery-bar-input']"
      #When I type " " into element with xpath "//input[@id='delivery-bar-input']"
      #When I click on element using JavaScript with xpath "//input[@id='selectedDeliveryAddress']"
      #When I type " " into element with xpath "//input[@id='delivery-bar-input']"
      #And I clear element with xpath "//input[@id='selectedDeliveryAddress']"
      #And I clear element with xpath "//input[@id='delivery-bar-input']"
      #Then I type "San Francisco" into element with xpath "//input[@id='delivery-bar-input']"
      #Then I click on element using JavaScript with xpath "//span[@id='algolia-autocomplete-listbox-0']"
      And I wait for 10 sec

    @flower4
    Scenario: 4eFlowers rate
      Given I open url "https://urbanstems.com/flowers"
      #Then I click on element with xpath "//div[@class='header__menu navigation navigation-main d-none d-lg-block']//div[@class='menu-group desktop-navigation']//a[@id='flowers']"
      Then I click on element using JavaScript with xpath "//div[@class='aa-dataset-1']"
      Then I clear element with xpath "//div[@class='aa-dataset-1']"
      #Then I type "               " into element with xpath "//span[@class='aa-dropdown-menu']"
      And I wait for 20 sec








