Feature: Signing in
As a client
  I want to be able to sign in
  So that I can access my account
  
  Scenario: Unsuccessful signin
    Given a client visits the signin page
    When they submit invalid signin information
    Then they should see an error message

  Scenario: Successful signin
    Given a client visits the signin page
      And the client has an account
    When the client submits valid signin information
    Then they should see their profile page
      And they should see a signout link