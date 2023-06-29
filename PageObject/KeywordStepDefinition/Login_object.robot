*** Settings ***
Resource    ../../Resources.robot
Resource    ../Locators/Page_login.robot
Resource    ../../TestData/Secret.robot

*** Keywords ***
On login page
    Wait Until Element Is Visible      ${FIELD_USERNAME}    2s
    Wait Until Element Is Visible      ${FIELD_PASSWORD}    2s
    Page Should Contain Element        ${FIELD_USERNAME}
    Page Should Contain Element        ${FIELD_PASSWORD}

Input username standart
    Input Text      ${FIELD_USERNAME}      ${USERNAME_STANDART}


Input password
    Input Text      ${FIELD_PASSWORD}   ${PASSWORD}

Click Button Login
    Click Element   ${BTN_LOGIN}

On homepage
    Page Should Contain Element        ${LOGO}
