@auth
Feature: User login

  Background:
    Given the system is running
    And the database is seeded

  Scenario: Successful login
    Given a registered user "alice"
    When she logs in with correct credentials
    Then she should see the dashboard
    And she should receive a welcome notification
    And the last login timestamp should be updated

  Scenario: Failed login
    Given a registered user "bob"
    When he logs in with incorrect credentials
    Then he should see an error message
    And an audit entry should be created

  Scenario: Lgout
    Given a logged-in user "alice"
    When she clicks logout
    Then she should be redirected to the home page
