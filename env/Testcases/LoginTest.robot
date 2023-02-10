*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitions/loginKeywords.robot

*** Test Cases ***
Login functionality
    [Documentation]    verify user is able to login with valid credential
    Open Edge browser
    Input username
    Input password in textfield
    Click on login button



