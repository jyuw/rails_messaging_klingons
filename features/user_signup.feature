Feature: User can sign up
  As a developer,
  in order to know if a user can sign up,
  we need to write signup feature specs.

  Background:
    Given the following user exists
    | name  |  email    | password    | password_confirmation |
    | Jade  | jf@ca.com | password123 | password123           |

  Scenario: User creates an account
    Given user is on the Sign up page
    When he fills in "Name" with "Holger"
    And he fills in "Email" with "hacker@holger.com"
    And he fills in "Password" with "password12"
    And he fills in "Password confirmation" with "password12"
    And he clicks "Create"
    And he sees message "Welcome! You have signed up successfully."

  Scenario: User did not enter all fields
    Given user is on the landing page
    When he clicks "Sign up"
    And he fills in "Password" with "password1"
    And he fills in "Password confirmation" with "password1"
    And he clicks "Create"
    And he sees message "Name can't be blank"

  Scenario: User did not enter both password fields
    Given user is on the landing page
    When he clicks "Sign up"
    And he fills in "Name" with "Holger"
    And he fills in "Password confirmation" with "password1"
    And he clicks "Create"
    And he sees message "Password confirmation doesn't match"
