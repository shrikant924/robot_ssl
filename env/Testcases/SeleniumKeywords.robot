*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
Retrive all selenium robot framework Keywords
    [Documentation]    robot framework keyword
    Open Browser    https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html    Edge
    # ${Alllinks}=    Get All Links    
    ${linkscount}=    Get Element Count    xpath://li/a
    Log To Console    ${linkscount}

    @{linkitems}    Create List

    FOR    ${i}    IN RANGE    1      ${linkscount}
    
     ${link}=     Get Text    xpath:(//li/a)[${i}]
          Log To Console    ${link}
    END

