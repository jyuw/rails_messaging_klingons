Feature: User can login
  As a developer
  In order to see login function works
  we want to create a feature test


  Background:
    Given The following user exists
    | name    |  email    |  password    |   password_confirmation |
    | Jade    | jf@ca.com |  password123 |   password123           |

  # Scenario: User is redirected to login page
  #   Given User is on the landing page
  #   When He clicks "Login"
  #   And He should be on "Login" page

  Scenario: User logs in to account
    Given We are on the Login page
    When He fills in "Email" with "jf@ca.com"
    And He fills in "Password" with "password123"
    And Show me the page
    And He clicks "Log in"
    And He sees message "Signed in successfully."

  # Scenario: User did not enter all fields
  #   Given User is on the landing page
  #   When He clicks "Sign up"
  #   And He fills in "Password" with "password1"
  #   And He fills in "Password confirmation" with "password1"
  #   And He clicks "Create"
  #   And He sees message "Name can't be blank"
  #
  # Scenario: User did not enter both password fields
  #   Given User is on the landing page
  #   When He clicks "Sign up"
  #   And He fills in "Name" with "Holger"
  #   And He fills in "Password confirmation" with "password1"
  #   And He clicks "Create"
  #   And He sees message "Password confirmation doesn't match"
