*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Wait until the elemnt with id "disabled" is enabled
    Open Browser    http://localhost:7272/delayed_events.html    chrome
    Run Keyword And Expect Error
    ...    Element 'id=disabled' was not enabled in 2 milliseconds.
    ...    Wait Until Element Is Enabled    id=disabled    2ms
    Wait Until Element Is Enabled    id=disabled    2 s
