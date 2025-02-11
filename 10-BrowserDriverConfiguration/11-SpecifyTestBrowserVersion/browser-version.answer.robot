*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Open Chrome 114
    Open Browser  https://robotframework.org/  chrome  options=browser_version='114'
    Sleep  30secs

Open Firefox ESR
    Open Browser  https://robotframework.org/  firefox  options=browser_version='esr'
    Sleep  30secs
