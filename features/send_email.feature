Feature: Test of mailboxers functionality
  As a user
  In order to communicate
  I should be send, recieve and manage my messages and conversations

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
    Then I click the 'Send Message' button
    And I should see 'Your message was successfully sent!' on my screen

  Scenario: Holger recieves a message from Kalle and replies
    Given Kalle have sent an message to Holger
    And I am logged in as 'Holger'
    And I am on the inbox page
    Then I should see 'Heia Norge' on my screen
    Then I click the 'View' link
    And I should see 'Heia Northug' on my screen
    And I type in 'Heja Carlson' in field for 'message_body'
    Then I click the 'Reply' button
    And I should see 'Your reply message was successfully sent!' on my screen

  @javascript
  Scenario: Holger recieves a message from Kalle and deletes it
    Given Kalle have sent an message to Holger
    And I am logged in as 'Holger'
    And I am on the inbox page
    And I should see 'Heia Norge' on my screen
    Then I click the 'View' link
    And I should see 'Heia Northug' on my screen
    Then I click the 'Move to trash' link
    Then I accept the alert
    Then I click the 'Trash' link
    And I should see 'Heia Northug' on my screen

  @javascript
  Scenario: Holger recieves a message from Kalle and deletes it and then untrash it.
    Given Kalle have sent an message to Holger
    And I am logged in as 'Holger'
    And I am on the inbox page
    And I should see 'Heia Norge' on my screen
    Then I click the 'View' link
    And I should see 'Heia Northug' on my screen
    Then I click the 'Move to trash' link
    And I accept the alert
    Then I click the 'Trash' link
    And I should see 'Heia Northug' on my screen
    Then I click the 'View' link
    Then I click the 'Untrash' link
    And I should see 'Heia Northug' on my screen