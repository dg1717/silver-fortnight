@market
    Feature: Market Scenarios

    @market1
    Scenario: WebDriver Methods - Navigate
      Given I go to "yahoo" page
      Given I go to "google" page
      And I print page details
      And I go to "quote" page
      When I refresh, go back, go forward

    @market2
    Scenario: Quote - responsive design
      Given I go to "quote" page
      And I set window to maximum
      And I set window to full screen
#      And I set window with to 200 and height to 400
      And I change resolution to "phone"
      Then I check window size

    @market3
    Scenario: Quote - email field validation
      Given I go to "quote" page
      When I navigate to "prod" environment
#      And I maximize window
      When I clear email field
      And I type "wrong#format" info email field
      And I maximize window
#      And I set window to maximum
      And I submit the form
      And I wait for 5 sec
      Then element with text "Please enter a valid email address." should be displayed
      And I submit the form
      Then element with text "Please enter a valid email address." should not be displayed

    @maetket4
    Scenario: Verify password behavior
      Given I navigate to "prod" environment
      And I verify password field behavior

    @market5
    Scenario: Fill out the form
      Given I navigate to "stage" environment
      And I fill in the required fields
      And I submit the form
      Then I verify Entered Data On the result page
      And I wait for 6 sec
