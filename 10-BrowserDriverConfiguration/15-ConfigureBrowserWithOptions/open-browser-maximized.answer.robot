*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Open the Chrome Browser with the window maximized
    Open Browser  https://robocon.io  chrome  options=add_argument("--start-maximized");
    ...  service=log_output='${CURDIR}/chromedriver.log'