*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Interacting With Stale Elements
    Open Browser    http://localhost:7272/stale.html    headlessfirefox
    ${child} =    Get WebElement    id:child
    Click Element    id:detach-child
    Sleep    500 milliseconds
    Wait For Expected Condition    staleness_of    ${child}
    Click Element    id:attach-child
    ${child} =    Get WebElement    id:child
    Click Element    ${child}
    Close All Browsers
