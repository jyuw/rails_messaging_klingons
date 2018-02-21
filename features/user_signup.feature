Feature: User can sign up
  As a developer
  In order to know if a user can sign up
  we need to write signup feature specs

  Background:
    Given The following user exists
    | name    |  email    |  password    |   password_confirmation |
    | Jade    | jf@ca.com |  password123 |   password123           |

  Scenario: User is redirected to signup page
    Given User is on the landing page
    When He clicks "Sign up"
    And He should be on "Sign up" page

  Scenario: User creates an account
    Given We are on the "Sign up" page
    When He fills in "Name" with "Holger"
    And He fills in "Email" with "hacker@holger.com"
    And He fills in "Password" with "password12"
    And He fills in "Password confirmation" with "password12"
    And He clicks "Create"
    And He sees message "Welcome! You have signed up successfully."

  Scenario: User did not enter all fields
    Given User is on the landing page
    When He clicks "Sign up"
    And He fills in "Password" with "password1"
    And He fills in "Password confirmation" with "password1"
    And He clicks "Create"
    And He sees message "Name can't be blank"

  Scenario: User did not enter both password fields
    Given User is on the landing page
    When He clicks "Sign up"
    And He fills in "Name" with "Holger"
    And He fills in "Password confirmation" with "password1"
    And He clicks "Create"
    And He sees message "Password confirmation doesn't match"
