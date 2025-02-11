*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Wait until the elemnt with id "disabled" is enabled
    Open Browser    http://localhost:7272/delayed_events.html    chrome
    # wait here until ..
