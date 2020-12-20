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
      And the client filled in the information
    When the client submits valid signup information
    Then client should see his name and email in the page
      And he should see his district