Feature: Order
 As a client
  I want to make order after signin
  So that they can deliver my purchases

  Scenario: Successful order
    Given a client should visit the signin page
    When the client signin his account and visit order page
    Then client should make order
      And he should see an order details