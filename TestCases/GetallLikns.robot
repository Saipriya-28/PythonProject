*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Get all link test
    open browser    https://www.automationexercise.com/     chrome
    maximize browser window
    ${alllinkscount}=   get element count    xpath://a
    log to console    ${alllinkscount}

    @{itemsList}    create list

    FOR     ${i}    IN RANGE    1   ${alllinkscount}+1
    ${linktext}=    get text    xpath:(//a)[${i}]
    log to console    ${linktext}
    END
