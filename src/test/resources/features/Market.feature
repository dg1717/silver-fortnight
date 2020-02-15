@market
  Feature: Market Scenarios
    @Market1
    Scenario: WebDriver Methods - Navigate
      Given I go to "qa" page
      Then I wait for 2 sec
      Then I go to "google" page
      Then I wait for 2 sec
      Then I go to "stage" page
      Then I wait for 2 sec
      And I print page details
      When I refresh, go back, and go forward
    @market2
    Scenario: Quote - responsive design
      Given I go to "qa" page
      And I set window to maximum
      And I set window to full screen
      And I set window width to 500 and height to 1024
      And I change resolution to "phone"
      Then I check window size
      And I change resolution to "tablet"
      Then I check window size
      And I change resolution to "desktop"
      Then I check window size
    @market3
    Scenario: Quote - email field validation
      Given I go to "quote" page
      When I clear email field
      And I type "wrong#format" into email field
      And I submit the form
      And element with text "Please enter a valid email address."should be displayed
      When I type "correct@format.com" into email field
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
      When I clear password field
      Then confirm password field should be "true" disabled
      When I type "12345" into password field
      When I type "12346" into password confirm field
      Then password confirm error message "Passwords do not match!" should be displayed

