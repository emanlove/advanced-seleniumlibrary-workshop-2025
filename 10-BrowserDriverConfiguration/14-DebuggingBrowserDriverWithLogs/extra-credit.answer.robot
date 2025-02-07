*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Get The Gecko Driver Log At Debug Logging Level
    Open Browser  https://robocon.io/  firefox  service=log_output='${CURDIR}/geckodriver.log'; service_args=['--log', 'debug']

Get The UnTruncated Gecko Driver Log At Debug Logging Level
    Open Browser  https://robocon.io/  firefox  service=log_output='${CURDIR}/geckodriver_nottruncated.log'; service_args=['--log-no-truncate', '--log', 'debug']
