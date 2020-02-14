@market
  Feature: Market scenarios

    @market1
    Scenario: WebDriver Methods - Navigate
      Given I go to "yahoo"
      And I print page details
      And I go to "quote"
      When I refresh, go back, go forward

    @market2
    Scenario: Quote - responsive design
      Given I go to "quote"
      And I set window to maximum
      And I set window to full screen
  #    And I set window width to 400 and height to 1024
      And I change resolution to "phone"
      Then I check window size

    @market3
    Scenario: Quote - email field validation
      Given I go to "quote"
      When I navigate to "prod" environment
      When I clear email field
      And I type "wrong#format" into email field
      And I submit the form
      Then element with text "Please enter a valid email address." should be displayed
      Then element with text "Please enter a valid email address" should not be displayed





