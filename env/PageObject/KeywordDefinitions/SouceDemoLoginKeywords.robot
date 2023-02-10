*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/Locators.py
Variables    ../Testdata/testdata.py



*** Keywords ***
Input UserName  
    [Arguments]    ${username1}
    Open Browser    https://www.saucedemo.com/    edge
    Maximize Browser Window
    Input Text    ${userName}    ${username1}
    

Input password1       
    [Arguments]    ${pass}
    Input Text    ${passwrd}     ${pass}

Click on login button
    Click Button    ${lgnBtn}
   
    

# Log 3
#     Log To Console    ${UserPassList}[0]
#     Log To Console    ${UserPassList}[1]
