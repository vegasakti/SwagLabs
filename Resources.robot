*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    BuiltIn
Library    String
Library    Screenshot

Resource    TestData/Secret.robot


*** Variables ***
${Browser}    Chrome


*** Keywords ***
Open Web Browser SauceDemo
    Open Browser    ${URL_SAUCE_DEMO}    ${Browser}
    Set Selenium Speed    1s
    Maximize Browser Window