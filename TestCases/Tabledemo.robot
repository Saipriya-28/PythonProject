*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Table Validations
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
#    set selenium speed    2seconds
    ${rows}=    get element count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}=     get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    log to console    ${rows}
    log to console    ${columns}
    ${data}=    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to console    ${data}

    table column should contain    xpath://table[@name='BookTable']     2   Author
    table row should contain    xpath://table[@name='BookTable']    7   Master In JS
    table cell should contain    xpath://table[@name='BookTable']   6   3   JAVA
    table header should contain    xpath://table[@name='BookTable']     BookName


