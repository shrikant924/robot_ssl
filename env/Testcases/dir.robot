*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Get Info
    Log To Console    ${EXECDIR}
    Log To Console     ${CURDIR}
    Log To Console     ${OUTPUT_DIR}