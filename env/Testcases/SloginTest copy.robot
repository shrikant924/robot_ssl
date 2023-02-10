*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitions/SouceDemoLoginKeywords.robot
Test Template    Verify login functionality

*** Test Cases ***         UserName            password
Invalid UserName           invalid             ${UserPassList}[1] 
Invalid password           ${UserPassList}[0]   invalid
Valid user and password    ${UserPassList}[0]    ${UserPassList}[1]


*** Keywords ***
Verify login functionality
    [Documentation]    This testcase will verify user is able to login in the app
    [Arguments]    ${userName1}    ${password1}
    Input UserName    ${userName1} 
    Input password1    ${password1}
    Click on login button
    # Log 3