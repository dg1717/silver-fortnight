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
    Scenario: Send flower to our beloved teacher from October 24th Express class
      Given I open url "https://urbanstems.com/"
      When I click on element with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
      And I click on element using JavaScript with xpath "//span[contains(@title,'Mixed Bouquets')]"
      And I click on element using JavaScript with xpath "(//span[contains(text(),'The Classics Collection')])[1]"
      And I wait for element with xpath "//a[contains(text(),'The Firecracker')]" to be present
      Then element with xpath "//a[contains(text(),'The Firecracker')]" should be displayed
      And I click on element using JavaScript with xpath "//*[contains(text(),'The Firecracker')]"
      And I click on element using JavaScript with xpath "//button[@class='add-to-cart btn btn-primary col-12 text-uppercase']"
      And I clear element with xpath "//input[@id='delivery-bar-input']"
      Then I type "4970 El Camino Real, #110, Los Alto, CA 94022" into element with xpath "//input[@id='delivery-bar-input']"
      And I clear element with xpath "//input[@class='datepicker']"
      And I type "Fri 02/14/2020" into element with xpath "//input[@class='datepicker']"
      When I click on element using JavaScript with xpath "//button[@class='add-to-cart btn btn-primary col-12 text-uppercase']"
      Then I wait for element with xpath "//a[@class='btn btn-primary btn-block checkout-btn ']" to be present
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
      Then I type "Leave it at the desk in the classroom" into element with xpath "//input[@id='shippingInstructionsdefault']"
      Then I wait for 4 sec
      When I wait for element with xpath "//textarea[@id='giftMessage']" to be present
      Then I type "Dear Galina, thank you very much for your great class! An automatic script and a beautiful flower is what we return. Thank you!" into element with xpath "//textarea[@id='giftMessage']"
      When I click on element with xpath "//*[contains(@value,'07:00:00')]"
      When I type "6504404757" into element with xpath "//input[@id='shippingPhoneNumberdefault']"
      Then I press enter on element with xpath "//input[@id='shippingPhoneNumberdefault']"
      When I type "galina@portnov.com" into element with xpath "//input[@id='shippingEmaildefault']"
      Then I wait for 2 sec
      Then element with xpath "//input[@id='shippingPhoneNumberdefault']" should have attribute "value" as "6504404757"
      Then I click on element with xpath "//button[@value='submit-shipping']"
      Then I wait for element with xpath "//h2[contains(text(),'Delivery Details')]" to be present
      Then I wait for 2 sec
#      Then I click on element using JavaScript with xpath "//*[@class='nav-link creditcard-tab active show']"
      When I wait for element with xpath "//*[@id='braintreeCardOwner']" to be present
      Then I type "Express Student" into element with xpath "//*[@id='braintreeCardOwner']"
      Then element with xpath "//input[@id='braintreeCardOwner']" should have attribute "value" as "Express Student"
      When I switch to iframe with xpath "//iframe[@id='braintree-hosted-field-number']"
      When I wait for element with xpath "//*[contains(@id,'number')]" to be present
      When I type "4111111111111111" into element with xpath "//*[contains(@id,'number')]"
      When I switch to default content
      When I switch to iframe with xpath "//iframe[@id='braintree-hosted-field-cvv']"
      When I type "103" into element with xpath "//*[contains(@id,'cvv')]"
      Then element with xpath "//*[contains(@id,'cvv')]" should have attribute "value" as "103"
      When I switch to default content
      When I switch to iframe with xpath "//iframe[@id='braintree-hosted-field-expirationDate']"
      Then I type "07//2020" into element with xpath "//input[@id='expiration']"
      Then element with xpath "//input[@id='expiration']" should have attribute "value" as "07 / 2020"
      Then I switch to default content
      When I type "Student" into element with xpath "//input[@id='billingFirstName']"
      Then element with xpath "//input[@id='billingFirstName']" should have attribute "value" as "Student"
      When I type "Express" into element with xpath "//input[@id='billingLastName']"
      Then element with xpath "//input[@id='billingLastName']" should have attribute "value" as "Express"
      When I type "12345" into element with xpath "//input[@id='billingZipCode']"
      Then element with xpath "//input[@id='billingZipCode']" should have attribute "value" as "12345"
      When I type "expressstudent@gmail.com" into element with xpath "//input[@id='email']"
      Then element with xpath "//input[@id='email']" should have attribute "value" as "expressstudent@gmail.com"
      When I type "4085719336" into element with xpath "//input[@id='phoneNumber']"
      Then element with xpath "//input[@id='phoneNumber']" should have attribute "value" as "4085719336"
      When I click on element using JavaScript with xpath "//button[contains(text(),'Review Order')]"
      Then I wait for 10 sec
