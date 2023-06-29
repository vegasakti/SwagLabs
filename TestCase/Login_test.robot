*** Settings ***
Resource    ../Resources.robot
Resource    ../StepDefinition/Login_step.robot

Test Setup    Open Web Browser SauceDemo
Test Teardown    Close Browser

*** Test Cases ***
Verify user is able to login with valid credentials
    [Tags]    Positive
    Given User Go To Login Page
    When User Login as Standart User
    Then User Succesfully Login as Standart User
Verify user cannot login with invalid credentials
    [Tags]    Negative
    Given User Go To Login Page
    When User Login as invalid standart user
    Then User Cannot Login with Invalid credentials
