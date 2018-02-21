Feature: User can login
  As a developer,
  in order to see the log in function works,
  we need to create a feature test.

  Background:
    Given the following user exists
    | name  |  email    |  password    | password_confirmation |
    | Jade  | jf@ca.com |  password123 | password123           |

  Scenario: User logs in to account
    Given we are on the Login page
    When he fills in "Email" with "jf@ca.com"
    And he fills in "Password" with "password123"
    And he clicks "Log in"
    And he sees message "Signed in successfully."

  Scenario: User did not enter all fields
    Given we are on the Login page
    And he fills in "Password" with "password123"
    And he clicks "Log in"
    And he sees message "Invalid Email or password."

  Scenario: User's credentials do not exist in the database
    Given we are on the Login page
    And he fills in "Email" with "Holger@hacker.com"
    And he fills in "Password" with "password1"
    And he clicks "Log in"
    And he sees message "Invalid Email or password."
