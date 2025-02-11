*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Get Chromedriver Log Into Current Directory
    Open Browser  https://robocon.io/  chrome  service=log_output='${CURDIR}/chromedriver.log'

Get The UnTruncated Gecko Driver Log At Debug Logging Level
    Open Browser  https://robocon.io/  firefox  service=log_output='${CURDIR}/geckodriver_nottruncated.log'; service_args=['--log-no-truncate', '--log', 'debug']
