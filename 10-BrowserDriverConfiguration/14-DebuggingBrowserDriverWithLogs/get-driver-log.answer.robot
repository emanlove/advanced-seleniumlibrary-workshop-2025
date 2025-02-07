*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Get The Driver Log And Place Into Current Directory
    Open Browser  https://robocon.io/  chrome  service=log_output='${CURDIR}/chromedriver.log'