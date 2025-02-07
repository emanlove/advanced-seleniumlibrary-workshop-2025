*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Specify The Local Driver
    Open Browser  https://robocon.io/  chrome  service=executable_path='./drivers/chromedriver.114.txt'