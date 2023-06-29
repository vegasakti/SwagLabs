*** Settings ***
Resource    ../PageObject/KeywordStepDefinition/Login_object.robot

*** Keywords ***
User Go To Login Page
    On login page
User Login as standart user
    Input username standart
    Login_object.Input password
    Click Button Login

User Login as invalid standart user
    Input username standart
    Login_object.Input invalid password
    Click Button Login

User Succesfully Login as Standart User
    On homepage

User Cannot Login with Invalid credentials
    Show Error ERROR_MESSEGE
