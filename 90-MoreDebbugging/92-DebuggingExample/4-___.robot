*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Press Keys To Delete Text
    [Setup]    Go To Page "forms/prefilled_email_form.html"
    Press Keys    comment    COMMAND+A    BACKSPACE
    Sleep  10secs
    Element Text Should Be   comment    ${EMPTY}
