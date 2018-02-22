Feature: Test if user is able to send message.
  As a user
  in order to communicate
  I should be able to send a message

  Background:
    Given The following users exist
      |name   |password   |email            |
      |Kalle  |passord123 |norge@test.no    |
      |Holger |passord123 |sverige@test.se  |

  Scenario: Kalle sends a message to Holger
    Given I am logged in as 'Kalle'
    And I am on the inbox page
    Then I click the 'Compose' link
    And I select 'Holger' as 'Recipients'
    And I type in 'Heia Norge' in field for 'Subject'
    And I type in 'Heia Northug' in field for 'Message'
    And I click the 'Send Message' button
    And I should see 'Your message was successfully sent!' on my screen

  Scenario: Holger recieves a message from Kalle
    Given Kalle have sent an message to Holger
    And I am logged in as 'Holger'
    And I am on the inbox page
    Then I should see 'Heia Norge' on my screen
    Then I click the 'View' link
    And I should see 'Heia Northug' on my screen
