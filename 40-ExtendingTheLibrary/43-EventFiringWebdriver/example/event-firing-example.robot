*** Settings ***
Library  SeleniumLibrary  event_firing_webdriver=${CURDIR}/ExampleEventFiringListener.py

*** Test Cases ***
Log On Navigation To Pages
     Open Browser   https://robotframework.org/   chrome
     Go To    https://robocon.io/
     Go To    https://www.selenium.dev/