*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Specify The Local Driver
    Open Browser  https://robocon.io/  chrome
    ...    options=browser_version='114'
    ...    service=executable_path='/Users/emanlove/.cache/selenium/chromedriver/mac-arm64/114.0.5735.90/chromedriver'