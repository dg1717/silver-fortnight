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
    Scenario: Send flower to show your love
      Given I open url "https://urbanstems.com/"
      When I click on element with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
      And I click on element using JavaScript with xpath "//span[contains(@title,'Mixed Bouquets')]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'The Classics Collection')])[1]"
      Then element with xpath "//a[contains(text(),'The Firecracker')]" should be displayed
      When I click on element using JavaScript with xpath "//*[contains(text(),'The Firecracker')]"
      And I click on element using JavaScript with xpath "//button[@class='add-to-cart btn btn-primary col-12 text-uppercase']"
      And I clear element with xpath "//input[@id='delivery-bar-input']"
      Then I type "4970 El Camino Real, #110, Los Alto, CA 94022" into element with xpath "//input[@id='delivery-bar-input']"
      And I clear element with xpath "//input[@class='datepicker']"
      And I type "Fri 02/14/2020" into element with xpath "//input[@class='datepicker']"
      When I click on element using JavaScript with xpath "//button[@class='add-to-cart btn btn-primary col-12 text-uppercase']"
      Then I wait for 2 sec
      When I click on element using JavaScript with xpath "//a[@class='btn btn-primary btn-block checkout-btn ']"
      When I click on element using JavaScript with xpath "//a[@class='btn btn-block btn-primary checkout-as-guest']"
      When I type "Galina" into element with xpath "//input[@id='shippingFirstNamedefault']"
      Then element with xpath "//input[@id='shippingFirstNamedefault']" should have attribute "value" as "Galina"
      When I type "Teacher" into element with xpath "//input[@id='shippingLastNamedefault']"
      Then element with xpath "//input[@id='shippingLastNamedefault']" should have attribute "value" as "Teacher"
      When I type "4970 El Camino Real, #110" into element with xpath "//input[@id='autocomplete-address']"
      Then element with xpath "//input[@id='autocomplete-address']" should have attribute "value" as "4970 El Camino Real, #110"
      When I type "Los Altos" into element with xpath "//input[@id='shippingAddressCitydefault']"
      Then I click on element using JavaScript with xpath "//select[@id='shippingStatedefault']/..//option[@value='CA']"
      When I type "94022" into element with xpath "//input[@id='shippingZipCodedefault']"
      Then element with xpath "//input[@id='shippingZipCodedefault']" should have attribute "value" as "94022"
      When I type "Portnov Computer School" into element with xpath "//input[@name='dwfrm_shipping_shippingAddress_companyName']"
      When I type "6504404757" into element with xpath "//input[@id='shippingPhoneNumberdefault']"
      Then element with xpath "//input[@id='shippingPhoneNumberdefault']" should have attribute "value" as "6504404757"
      Then I type "Leave it at the desk in the classroom" into element with xpath "//input[@id='shippingInstructionsdefault']"
      Then I type "Dear Galina, thank you very much for your wonderful teaching! The staff you teach is so cool! To return your favour, the only thing we can do is writing an automatic script and buy you a beautiful flower. Thank you!" into element with xpath "//textarea[@id='giftMessage']"
      When I click on element with xpath "//*[contains(@value,'07:00:00')]"
      Then I wait for 3 sec
      Then I click on element with xpath "//button[contains(text(),'Continue to Payment')]"
      Then I wait for 20 sec
