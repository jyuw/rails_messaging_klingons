Feature: User can sign up
  As a developer,
  in order to know if a user can sign up,
  we need to write signup feature specs.

  Background:
    Given the following user exists
    | name  |  email    | password    | password_confirmation |
    | Jade  | jf@ca.com | password123 | password123           |

  Scenario: User creates an account
    Given I am on the Sign up page
    When I fill in "Name" with "Holger"
    And I fill in "Email" with "hacker@holger.com"
    And I fill in "Password" with "password12"
    And I fill in "Password confirmation" with "password12"
    And I click "Create"
    And I see message the "Welcome! You have signed up successfully."

  Scenario: User did not enter all fields
    Given I am on the landing page
    When I click "Sign up"
    And I fill in "Password" with "password1"
    And I fill in "Password confirmation" with "password1"
    And I click "Create"
    And I see message the "Name can't be blank"

  Scenario: User did not enter both password fields
    Given I am on the landing page
    When I click "Sign up"
    And I fill in "Name" with "Holger"
    And I fill in "Password confirmation" with "password1"
    And I click "Create"
    And I see message the "Password confirmation doesn't match"
