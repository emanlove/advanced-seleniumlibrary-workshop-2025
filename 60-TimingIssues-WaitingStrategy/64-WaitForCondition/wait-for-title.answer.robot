*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Waiting for title change
    Open Browser    http://localhost:7272/expected_conditions.html    chrome
    Title Should Be    Original
    Click Element    link=delayed change title
    Wait For Condition    return document.title == "Delayed"
    Title Should Be    Delayed
