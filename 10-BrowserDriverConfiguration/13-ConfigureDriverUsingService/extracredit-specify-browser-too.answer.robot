*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Specify The Local Driver and Broswer!!
    [Documentation]  https://www.selenium.dev/documentation/webdriver/browsers/chrome/#start-browser-in-a-specified-location
    Open Browser  https://robocon.io/  chrome  options=binary_location='./browser/chrome.114.exe'
    ...  service=executable_path='./drivers/chromedriver.114.txt'