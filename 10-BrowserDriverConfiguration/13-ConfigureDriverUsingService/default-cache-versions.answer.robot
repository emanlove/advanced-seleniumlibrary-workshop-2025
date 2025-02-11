*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Specify The Local Driver
    Open Browser  https://robocon.io/  chrome
    ...    options=binary_location='/Users/emanlove/.cache/selenium/chrome/mac-arm64/114.0.5735.133/Google Chrome for Testing.app/Contents/MacOS/Google Chrome for Testing'
    ...    service=executable_path='/Users/emanlove/.cache/selenium/chromedriver/mac-arm64/114.0.5735.90/chromedriver'