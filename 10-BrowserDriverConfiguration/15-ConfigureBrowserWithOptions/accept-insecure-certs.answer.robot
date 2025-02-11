*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Open the Chrome Browser Allowing For Insecure Certs
    Open Browser  https://self-signed.badssl.com/  chrome  options=accept_insecure_certs = True;
    ...  service=log_output='${CURDIR}/chromedriver.log'
