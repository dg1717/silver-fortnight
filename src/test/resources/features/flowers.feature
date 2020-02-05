@flowers
  Feature: Get flowers
   @flowers1
    Scenario: Flowers rate
      Given I open url "https://urbanstems.com/"
      When I click on element with xpath "//div[contains(@class,'header__menu')]//span[@class='cat-name'][contains(text(),'Flowers')]"
#      Then I clear element with xpath "//span[@class='algolia-autocomplete']"
 #     Then I click on element using JavaScript with xpath "//*[@id='delivery-bar-input']"
 #     Then element with xpath "//span[@class='algolia-autocomplete']//pre[contains(text(),'W')" should be present
      When I click on element using JavaScript with xpath "//*[@id='delivery-bar-input']"
      Then I clear element with xpath "//input[@id='delivery-bar-input'][@aria-expanded ='false']"
      When I type "San Francisco" into element with xpath "//*[@id='delivery-bar-input']"
      Then I wait for 4 sec