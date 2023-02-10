*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/Locators.py
Variables    ../Testdata/testdata.py

*** Keywords ***
Open Edge browser
    Open Browser    ${site_url}    ${browser}
    

Input username
    Wait Until Element Is Visible    ${userNameInputField}
    Input Text    ${userNameInputField}    Admin

Input password in textfield
    Wait Until Element Is Visible    ${passwordInputField}
    Input Text    ${passwordInputField}    admin123

Click on login button
    Wait Until Element Is Visible    ${loginButton}
    Click Button    ${loginButton}
    Sleep    10s
