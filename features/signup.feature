Feature: Sign up
 As a client
  I want to sign up with my information
  So that I can subscription to request delivery 

  Scenario: Unsuccessful signup
    Given a client visits the signup page
    When they submit invalid signup information
    Then they should see an error message

  Scenario: Successful signup
    Given a client visits the signup page
      And the client fills in the information
    When the client submits valid signup information
    Then they should see their settings page
      And they should see a signout link