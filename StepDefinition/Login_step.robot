*** Settings ***
Resource    ../PageObject/KeywordStepDefinition/Login_object.robot

*** Keywords ***
User Go To Login Page
    On login page
User Login as standart user
    Input username standart
    Input password
    Click Button Login
User Succesfully Login as Standart User
    On homepage