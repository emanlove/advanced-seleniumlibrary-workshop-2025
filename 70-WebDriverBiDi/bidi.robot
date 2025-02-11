*** Settings ***
Library    SeleniumLibrary

Documentation    Implement the following keywords:
...    Open Firefox With BiDi Support
...    Open Chrome With BiDi Support
...    Append Console Messages To List


*** Test Cases ***
BiDi With Firefox
    Open Firefox With BiDi Support    http://localhost:7272/
    Wait Until Page Contains    Hello World

    VAR    @{console_messages}
    Append Console Messages To List    ${console_messages}

    Go To    http://localhost:7272/bidi.html
    Wait Until Page Contains    RoboCon 2025 SeleniumLibrary workshop
    Wait Until Keyword Succeeds    1 second    100 milliseconds   Should Not Be Empty    ${console_messages}
    Should Be Equal As Strings    ${{ type($console_messages[0]) }}    <class 'selenium.webdriver.common.bidi.script.ConsoleLogEntry'>
    Log    ${console_messages}

BiDi With Chrome
    Open Chrome With BiDi Support    http://localhost:7272/
    Wait Until Page Contains    Hello World

    VAR    @{console_messages}
    Append Console Messages To List    ${console_messages}

    Go To    http://localhost:7272/bidi.html
    Wait Until Page Contains    RoboCon 2025 SeleniumLibrary workshop
    Wait Until Keyword Succeeds    1 second    100 milliseconds   Should Not Be Empty    ${console_messages}
    Should Be Equal As Strings    ${{ type($console_messages[0]) }}    <class 'selenium.webdriver.common.bidi.script.ConsoleLogEntry'>
    Log    ${console_messages}


*** Keywords ***
Open Firefox With BiDi Support
    [Arguments]    ${page}
    Open Browser    ${page}    headlessfirefox

Open Chrome With BiDi Support
    [Arguments]    ${page}
    Open Browser    ${page}    headlesschrome

Append Console Messages To List
    [Documentation]    Add a console message handler to the driver instance that appends messages to a list.
    ...    You will want to use add_console_message_handler($list.append)
    [Arguments]    ${list}
    No Operation
