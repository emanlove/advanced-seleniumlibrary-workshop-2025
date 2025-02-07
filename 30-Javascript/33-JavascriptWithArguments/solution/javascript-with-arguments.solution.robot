*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Using Javascript With Arguments To Hide Floating Menu
    Open Browser    http://the-internet.herokuapp.com/floating_menu    Chrome
    Click Link      \#home
    Execute Javascript  ARGUMENTS  menu  none  JAVASCRIPT  document.getElementById(arguments[0]).style.display = arguments[1]
    Log To Console   Hide Menu
    Run Keyword And Expect Error  *  Click Link      \#home
    Execute Javascript   document.getElementById(arguments[0]).style.display = arguments[1]  ARGUMENTS  menu  ${EMPTY}
    Log To Console  Revealed Menu
    Click Link      \#home

Call Javascript Within A File To Hide Floating Menu Passing In Arguments
    Open Browser    http://the-internet.herokuapp.com/floating_menu    Chrome
    Click Link      \#home
    Execute Javascript  ${CURDIR}/set-menu-state.js  ARGUMENTS  menu  none
    Log To Console   Hide Menu
    Run Keyword And Expect Error  *  Click Link      \#home
    Execute Javascript  ${CURDIR}/set-menu-state.js  ARGUMENTS  menu  ${EMPTY}
    Log To Console  Revealed Menu
    Click Link      \#home
