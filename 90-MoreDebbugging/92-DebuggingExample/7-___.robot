*** Settings ***
Library  SeleniumLibrary
Resource  util.resource


*** Test Cases ***
Press Keys To Delete Text
    [Setup]    Go To Page "forms/prefilled_email_form.html"
    ${before_text_area}=    Get Property    comment    value
    Should Be Equal    ${before_text_area}    Prefilled text area
    Press Keys    comment    COMMAND+A    BACKSPACE
    Sleep  10secs
    ${text_area}=    Get Property    comment    value
    Should Be Equal    ${text_area}    ${EMPTY}
