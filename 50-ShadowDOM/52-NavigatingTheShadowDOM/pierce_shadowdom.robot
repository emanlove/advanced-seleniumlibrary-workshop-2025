*** Settings ***
Library    SeleniumLibrary    plugins=${CURDIR}/ShadowDOMPlugin.py

*** Test Cases ***
Nested Shadow DOM
    Open Browser    http://localhost:7272/shadow_dom.html    chrome
    Page Should Contain Element    id:shadow_host >> id:nested_shadow_host >> id:nested_div
