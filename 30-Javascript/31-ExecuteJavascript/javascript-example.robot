*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Example of Calling a piece of JavaScript
    Open Browser    about:blank    Chrome
    Execute Javascript    alert('Hello World!')
    Sleep  2secs

Example when one needs to retrieve some data from javaScript
    Open Browser    about:blank    Chrome
    ${empty_text}  Execute Javascript    return document.querySelector("body").textContent;
    Should Be Equal  ${empty_text}   ${EMPTY}