*** Settings ***
Resource    ../Resources.robot
Resource    ../StepDefinition/Login_step.robot

Test Setup    Open Web Browser SauceDemo
Test Teardown    Close Browser

*** Test Cases ***
User Login To Website
    [Tags]    Positive
    Given User Go To Login Page
    When User Login as Standart User
    Then User Succesfully Login as Standart User
