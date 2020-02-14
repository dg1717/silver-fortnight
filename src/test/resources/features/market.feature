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