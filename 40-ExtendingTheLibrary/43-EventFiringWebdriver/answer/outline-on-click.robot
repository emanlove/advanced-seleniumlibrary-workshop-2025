*** Settings ***
Library  SeleniumLibrary  event_firing_webdriver=${CURDIR}/ClickListener.py

*** Test Cases ***
Log On Navigation To Pages
     Open Browser   https://robotframework.org/   chrome
     Click Element  css:button[name="go-to-Development"]
     Click Element  css:button[name="go-to-Resources"]
     Click Element  css:button[name="go-to-Community"]
