*** Settings ***
Library     ../Lib/site-packages/SeleniumLibrary/
Library     ../CustomLibraries/cs.py
Library    ../CustomLibraries/Hello.py
Variables   ../PageObject/Testdata/testdata.py
Suite Setup         

*** Test Cases ***
Perform End to End testing omayoBlogspot website
    [Documentation]    it will perform E2E testing
    # Set Screenshot Directory    ${OUTPUT_DIR}/Screenshot/  
    Open Browser    http://omayo.blogspot.com/    chrome    
    Maximize Browser Window
    Execute Javascript     window.scrollBy(0,1400)     
    Click Button    xpath://button[@class='dropbtn']
    Wait Until Element Is Visible    link:Facebook
    # Tap On Me    link:Facebook
    Tap On Link  link:Facebook  
    # Click Link    link:Facebook
    Go Back
    Wait Until Element Is Visible    id:alert2
    Click Element    id:alert2
    Alert Should Be Present    Hello    action=ACCEPT
    # Sleep    10s
    Click Link    link:SeleniumTutorial   
    # Sleep    10s
    ${windowList}=    Get Window Handles      
    Log To Console    ${windowList}
    Switch Window    new
    ${pageTitle}=    Get Title
    Title Should Be    ${pageTitle} 
    Switch Window    MAIN
    Double Click Element    xpath://button[@ondblclick='dblclickAlert()']
    Alert Should Be Present    Double Click Successfull    ACCEPT
    Click Element    xpath://button[normalize-space()='Check this']
    Wait Until Element Is Enabled    css:#dte    timeout=15s
    Select Checkbox    css:#dte
    Checkbox Should Be Selected    css:#dte
    ${list1}=    Get Webelements     xpath:(//ol/li)
    FOR    ${element}    IN    @{list1}
        Log    ${element}
        ${listname}=   Get Text    ${element}
        Log To Console    ${listname}
    END
    Select From List By Label    id:drop1    doc 1
    ${listvalue}=       Get Selected List Label    id:drop1
    Log To Console    ${listvalue}
    Should Be Equal    ${listvalue}    doc 1
    Select Radio Button    gender    male
    Radio Button Should Be Set To    gender    male
    Click Element    css:#prompt
    # Alert Should Be Present    What is your name?        timeout=10s
    Input Text Into Alert    I am shrikant    ACCEPT    timeout=10s
    Clear Element Text    css:#textbox1
    Choose File    css:#uploadfile       ${EXECDIR}/env/Files/adc.png
