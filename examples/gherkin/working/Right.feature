@auth
Feature: User login

  Background:
    Given the system is running

  Scenario: Successful login
    Given a registered user "alice"
    When she logs in with correct credentials
    Then she should see the dashboard
    And the last login timestamp should be updated

  Scenario: Failed login
    Given a registered user "bob"
    When he logs in with incorrect credentials
    Then he should see an error message
    And an audit entry should be created
