*** Settings ***
Library   SeleniumLibrary
Resource  util.resource

*** Test Cases ***
Press Keys To Delete Text
    [Setup]    Go To Page "prefilled_email_form.html"
    Press Keys    comment    COMMAND+A+BACKSPACE
