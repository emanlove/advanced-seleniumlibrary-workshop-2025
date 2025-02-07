*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Open the Chrome Browser Allowing For Insecure Certs
    Open Browser  https://robocon.io  chrome  options=accept_insecure_certs = True;
    ...  service=log_output='${CURDIR}/chromedriver.log'