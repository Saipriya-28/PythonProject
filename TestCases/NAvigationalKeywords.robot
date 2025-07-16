*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***

Test Navigational Keywords
    open browser    https://www.google.com/     chrome
    maximize browser window
    ${loc}=     get location
    log to console    ${loc}
    sleep    2

    go to    https://www.facebook.com/
    maximize browser window
    ${loc}=     get location
    log to console    ${loc}
    sleep    1

    go back
    ${loc}=     get location
    log to console    ${loc}

