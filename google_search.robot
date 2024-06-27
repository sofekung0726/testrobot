*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}    edge
${SEARCH_TERM}    robot framework

*** Test Cases ***
Search Google and Verify Results
    Open Google
    Input Search Term   
    Click Google Search
    Verify Search Results
    Close Browser

*** Keywords ***
Open Google
    Open Browser    https://www.google.com    ${BROWSER}

Input Search Term
    Input Text      name=q                 ${SEARCH_TERM}

Click Google Search
    Press Keys   name=q  ENTER

Verify Search Results
    Wait Until Page Contains    ${SEARCH_TERM}