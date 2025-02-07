*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Verify Setup
    VAR    @{browsers}    chrome    headlesschrome    firefox    headlessfirefox
    FOR    ${browser}    IN    @{browsers}
        Open Browser    https://robotframework.org/    ${browser}
        Wait Until Page Contains    Robot Framework
        Close All Browsers
    END

