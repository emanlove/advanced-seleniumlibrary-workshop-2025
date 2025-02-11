*** Variables ***
${PORT}    7272
${ROOT}    http://localhost:${PORT}

*** Keywords ***
Go To Page "${relative url}"
    Open Browser  ${ROOT}/${relative url}  chrome