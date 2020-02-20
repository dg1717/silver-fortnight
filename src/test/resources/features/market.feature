@market

  Feature: Market functionalists
    @market1
    Scenario: Web Driver method - Navigates
      Given I open a "google"
      And I Print page details
      And I open a "quote"
      When I refresh , go back , go forward

    @market2
    Scenario: Quote - Responsive Design
      Given I open a "quote"
      And  I set window to maxi
      And I set window to full screen
#      And I set window width to 1280 and height to 1024
      And I change resolution to "phone"
      Then I check the window size

    @market3
    Scenario: Quote Email Field Validation
      Given I open a "quote"
      When I navigate to "prod" environment
      When I clear email field
      And I type "worng#format" into email field
      When I submit the form
      Then element with text "Please enter a valid email address." should be displayed
      When I clear email field
      When I type "nila@gmail.com" into email field
      Then I submit the form
      Then element with text "Please enter a valid email address." should not be displayed

    @market4
    Scenario: Password Field behavior Validation
      Given I open a "quote"
      When I navigate to "prod" environment
      Then I clear password field
      And I type "wrong#password" into field
      Then I submit the form
      Then The error message "Please enter at least 5 characters. " should be displayed
      Then I clear the password field
      Then I type correct "password" into the field
      Then I submit the form
      Then The error message "Please enter at least 5 characters." should not be displayed

    @market5
    Scenario: Validate Confirm Password is disabled When Password is empty
      Given I open a "quote"
      Then I navigate to "prod" environment
      When verify the confirm password field is disabled when the password field is empty
      Then I clear password field
      Then I type correct "password" into the field
      And Verify the confirm password field is enabled


    @market6
    Scenario: Confirm Password field behavior validation
      Given I open a "quote"
      Then I navigate to "prod" environment
      Then I Type "12345" into password field
      Then I type "23456" into confirm password field
      Then I submit the form
      Then The error message "Passwords do not match!" should be present
      Then I clear password field
      Then I Type "12345" into password field
      Then I clear the confirm password field
      Then I type "12345" into confirm password field
      Then I submit the form
      Then The error message "Passwords do not match!" should not be present

    @market7
    Scenario: Quote - End-to-End workflow
      Given I open a "quote"
      Then I navigate to "prod" environment
      And I fill out all the required fields
      Then I submit the form
      Then I move to new window
