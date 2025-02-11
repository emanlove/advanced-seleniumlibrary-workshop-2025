*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Waiting for title change
    Open Browser    http://localhost:7272/expected_conditions.html    chrome
    # .. use `Wait For Condition` for the title to change
