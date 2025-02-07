*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Open the Chrome version in development
    Open Browser  https://robotframework.org/  chrome  options=browser_version='114'
    Sleep  30secs