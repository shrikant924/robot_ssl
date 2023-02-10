*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=../files/data.csv    encoding=utf_8    dialect=unix  #we need to add this libary for data driven testing
Resource    ../PageObject/KeywordDefinitions/SouceDemoLoginKeywords.robot
Test Template    Verify login functionality
Resource     ../PageObject/locators/Locators.py

*** Test Cases ***
Login UserName ${userName1} ${password1}    abc    xyz

*** Keywords ***
Verify login functionality
    [Documentation]    This testcase will verify user is able to login in the app
    [Arguments]    ${userName1}    ${password1}
    Input UserName    ${userName1} 
    Input password1    ${password1}
    Click on login button    
    # Log 3