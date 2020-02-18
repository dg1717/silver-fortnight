@market
  Feature: Market Scenarios

    @market1
    Scenario: WebDriver Methods - Navigate
      Given I go to "google" page
      And I print page details
      And I go to "quote" page
      When I refresh, go back, go forward

    @market2
    Scenario: Quote - responsive design
      Given I go to "quote" page
      And I set window to maximum
      And I set window to full screen
#      And I set window width to 400 and height to 1024
      And I change resolution to "desktop"
      Then I check window size

    @market3
    Scenario: Quote - email feild validaiton
      Given I go to "quote" page
      When I navigate to "prod" environment
      When I clear email field
      And I type "wrong#format" into email field
      And I submit the form
      Then element with text "Please enter a valid email address." should be displayed
      And I type "correct@format.com" into email field
      And I submit the form
      Then element with text "Please enter a valid email address." should not be displayed

    @market4
    Scenario: Quote - Password field behavior validation
      //password field should accept not less than 5 characters
      Given I go to "quote" page
      When I navigate to "prod" environment
      And I submit the form
      Then password field error message "This field is required." should be displayed
      When I type "1234" into password field
      Then password field error message "Please enter at least 5 characters." should be displayed
      When I clear password field
      When I type "12345" into password field
      Then password field error message "Please enter at least 5 characters." should not be displayed







