*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Using Javascript With Arguments To Hide Floating Menu
    Open Browser    http://the-internet.herokuapp.com/floating_menu    Chrome
    Click Link      \#home
    Execute Javascript  document.getElementById('menu').style.display = 'none'
    Log To Console   Hide Menu
    Run Keyword And Expect Error  *  Click Link      \#home
    Execute Javascript   document.getElementById('menu').style.display = ''
    Log To Console  Revealed Menu
    Click Link      \#home

Call Javascript Within A File To Hide Floating Menu Passing In Arguments
    Open Browser    http://the-internet.herokuapp.com/floating_menu    Chrome
    Click Link      \#home
    Execute Javascript  ${CURDIR}/hide-menu.js
    Log To Console   Hide Menu
    Run Keyword And Expect Error  *  Click Link      \#home
    Execute Javascript  ${CURDIR}/reveal-menu.js
    Log To Console  Revealed Menu
    Click Link      \#home
