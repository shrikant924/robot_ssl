*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Log current directory to Console
    Log To Console    ${CURDIR}  
    Log To Console  ${OUTPUT_DIR}